def quicksort(list: List[Int]): List[Int] = list match {
  case Nil => Nil
  case pivot :: tail =>
    val (less, greater) = tail.partition(_ < pivot)
    quicksort(less) ::: pivot :: quicksort(greater)
}
val unsortedList = List(5, 2, 9, 1, 5, 6)
val sortedList = quicksort(unsortedList)
println(sortedList) // prints List(1, 2, 5, 5, 6, 9)
