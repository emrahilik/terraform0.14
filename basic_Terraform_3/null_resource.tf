resource "null_resource" "script" {   
    triggers = {
        always_run = timestamp()
    }



provisioner "remote-exec" {
    #script = file("${path.module}/user.sh")  # you have to put path sh file location.
   # you use your comment with script or list as a inline 
   inline = [
    "sudo yum install httpd -y",
   "sudo systemctl start httpd",
   " sudo yum install telnet -y",
   " sudo yum install vim -y "
   ]

    connection {
    type     = "ssh"
    user     = "centos"
    password = "file(~/.ssh/id_rsa)"
    host     = aws_instance.yusufemrah.public_ip  
    }
    }

    provisioner "remote-exec" {
      source = "user.sh"
      destination = "/tmp/user.sh"

    connection {
    type     = "ssh"
    user     = "centos"
    password = "file(~/.ssh/id_rsa)"
    host     = aws_instance.yusufemrah.public_ip  
    }
  
  }
  }