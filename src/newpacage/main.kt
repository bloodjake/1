package newpacage

fun main(args: Array<String>) {
    if (args.isEmpty()) {
        println("no args")
    } else {
        args.forEach { println(it) }
    }
}