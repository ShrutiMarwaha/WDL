# glob() function to read multiple files at once
task globber {
  command <<<
  for i in `seq 1 5`
  do
	echo $i
  	mkdir out-$i
	echo "globbing is my numer $i best hobby" > out-$i/$i.txt
  done
  >>>
  output {
    Array[File] outFiles = glob("out-*/*.txt")
  }
  runtime {
    docker: "ubuntu:latest"
  }
}

workflow test {
  call globber
}
