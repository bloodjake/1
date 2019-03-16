package newpacage

fun main(args: Array<String>) {
    if (args.isEmpty()){
        println("no args")
    }else{
        for (arg in args) {
            println(arg)
        }
    }
}