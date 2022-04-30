import java.io.PrintWriter
import back.MipsGenerator
import front.{AST, Parser}

import scala.util.Using
import org.scalatest.FunSuite

class Test extends FunSuite {
  def parseAndGet(program: String): List[AST.Node] = Parser.parseAll(Parser.program, program).get

  def genMips(program: String): Unit = {
    val list = Parser.parseAll(Parser.program, program)
      .map(MipsGenerator.generate)
      .get
      .map(_.genMips)
      .filter(_.nonEmpty)

    val writer = new PrintWriter("res.as")
    Using(writer) { writer =>
      for (line <- list) writer.write(line + "\n")
    }
  }


  test("program") {

    val nodeList = parseAndGet(
      """  val result = 1 + 1 + 2 + 3
        |  val price = result
        |  val value = price - result
        |  val multiplication = 1 * 3 * 4
        |  val division = 20 / 3
        |
        |  print(division)
        |  print(1 + 1 + 2)
        |
        |""".stripMargin
    )

    nodeList.foreach(println)
  }

  test("expr") {

    val nodeList = parseAndGet(
      """  ( 1 )
        |  { 1 }
        |  1
        |  1 + 1
        |""".stripMargin
    )

    assert(nodeList == List(AST.Number(1), AST.Block(List(AST.Number(1))), AST.Number(1), AST.Addition(AST.Number(1), AST.Number(1))))
  }

  test("stmt") {
    val nodeList = parseAndGet(
      """  def main = {
        |    1
        |  }
        |
        |  def main = 1
        |  def main = 1 + 1
        |
        |  def main() = {
        |    1
        |  }
        |
        |  def main(param) = {
        |    1
        |  }
        |
        |  def main(param, param) = {
        |    1
        |  }
        |
        |""".stripMargin
    )

    val expected = List(
      AST.DeclareFunction(AST.Ident("main"), List(), AST.Block(List(AST.Number(1)))),
      AST.DeclareFunction(AST.Ident("main"), List(), AST.Number(1)),
      AST.DeclareFunction(AST.Ident("main"), List(), AST.Addition(AST.Number(1), AST.Number(1))),
      AST.DeclareFunction(AST.Ident("main"), List(), AST.Block(List(AST.Number(1)))),
      AST.DeclareFunction(AST.Ident("main"), List(AST.Ident("param")), AST.Block(List(AST.Number(1)))),
      AST.DeclareFunction(AST.Ident("main"), List(AST.Ident("param"), AST.Ident("param")), AST.Block(List(AST.Number(1))))
    )

    (expected zip nodeList).foreach {
      case (left, right) => assert(left == right)
    }
  }

  test("block") {
    val nodeList = parseAndGet(
      """
        |
        | def main() = {
        |   val h = 8
        |   val e = 5
        |   val l = 13
        |   val o = 16
        |
        |   print(h)
        |   print(e)
        |   print(l)
        |   print(l)
        |   print(o)
        | }
        |
        |""".stripMargin)

  }

  test("if") {
    genMips(
      """ def main() = {
        |   val value = 10
        |
        |   if (value == 101) print(value)
        | }
        |
        |""".stripMargin)
  }

  test("if-else") {
    genMips(
      """ def main() = {
        |   val value = 10
        |   if (value == 101) print(value) else print(1)
        |
        |   print(if(value == 101) 10)
        |   print(if(value == 101) 10 else 1)
        | }
        |
        |""".stripMargin
    )
  }
}
