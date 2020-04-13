#' Return an R script’s path
#' @keywords internal
script_path = function () {
    args = commandArgs()

    file_arg = grep('--file=', args)
    if (length(file_arg) != 0L) {
        return(dirname(sub('--file=', '', args[file_arg])))
    }

    f_arg = grep('-f', args)
    if (length(f_arg) != 0L) return(dirname(args[f_arg + 1L]))

    getwd()
}
