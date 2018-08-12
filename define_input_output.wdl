task hello{
	String name
	String salutation

	command{
		echo '${salutation} ${name}!'
	}
	output{
		String response = read_string(stdout())
	}
}

workflow test{
	call hello{
		   input: salutation='Greetings'
		}
		call hello as hello2
}
