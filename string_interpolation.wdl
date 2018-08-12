# output file is named as a function of one of its inputs
task hello{
	String name
	
	command{
		echo 'Hello ${name}!' > ${name}.txt
		}
	output{
		String response = read_string("${name}.txt")
		}
	}

workflow test{
	call hello
}
