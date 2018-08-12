task hello {
  String name

  command {
    echo 'Hello ${name}!' > /tmp/test.out
  }
  output {
    String response = read_string('/tmp/test.out')
  }
}

workflow test {
  call hello
}
