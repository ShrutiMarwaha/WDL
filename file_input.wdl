task greping{
	File file

	command{
		grep -c '^...$' ${file}
	}
	output{
		Int count = read_int(stdout())
	}
}

workflow test{
	call greping
}
