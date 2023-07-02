import scala.io.StdIn

object MinMax {
  def main(args: Array[String]): Unit = {
    println("Enter the number of integers:")
    var n = 0
    while (n <= 0) {
      try {
        n = StdIn.readInt()
        if (n <= 0) {
          throw new Exception("Invalid input: enter a positive integer")
        }
      } catch {
        case _: Throwable => println("Invalid input: enter a positive integer")
      }
    }

    var min = Int.MaxValue
    var max = Int.MinValue

    println(s"Enter $n integers:")
    for (i <- 1 to n) {
      var num = 0
      while (num == 0) {
        try {
          num = StdIn.readInt()
        } catch {
          case _: Throwable => println("Invalid input: enter an integer")
        }
      }
      min = math.min(min, num)
      max = math.max(max, num)
    }

    println(s"Minimum number: $min")
    println(s"Maximum number: $max")
  }
}

