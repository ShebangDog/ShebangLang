import scala.language.postfixOps
import scala.sys.process._


ThisBuild / version := "0.1.0-SNAPSHOT"

ThisBuild / scalaVersion := "2.13.8"

lazy val dev = taskKey[Unit]("Execute the shell script")


lazy val root = (project in file("."))
  .settings(
    name := "ShebangLang",
    dev := {
      "java -jar /Applications/Mars.jar res.as" !
    }
  )

libraryDependencies += "org.scala-lang.modules" %% "scala-parser-combinators" % "2.1.1"

libraryDependencies += "org.scalatest" %% "scalatest" % "3.2.11" % Test