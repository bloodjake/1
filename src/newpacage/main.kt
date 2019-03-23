package newpacage

fun main(args: Array<String>) {
    val status: Int
    when {
        args.isEmpty() -> {
            println("no args")
            status = 0
        }
        args.size == 1 -> status = 1
        args.size == 2 -> status = 1
        else -> {
            args.forEach { println(it) }
            status = 100
        }
    }
    System.exit(status)
}

