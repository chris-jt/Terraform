//Codigo para definir un proveedor AWS y crear una instancia EC2 basica
provider "aws" {
    region = "us_east-1"
}

resource "aws_instance" "ejemplo"{
    ami = "ami-0c55b159cbfafe1f0"
    instance_type = "t2.micro"
    tags = {
        Name = "instancia-ejemplo"
    }   
}

//Ejecuta el siguiente comando para inicializar tu proyecto Terraform:
// terraform init   -->Este comando descarga los plugins necesarios para el proveedor AWS.

// Para ver qué cambios realizará Terraform 
// terraform plan

// Para crear la infraestructura definida
// terraform apply

// Verificar la creación de tu instancia EC2 en la consola de AWS o utilizando el siguiente comando de AWS CLI:
// aws ec2 describe-instances --filters "Name=tag:Name,Values=instancia-ejemplo"

// Destrucción de la infraestructura
// terraform destroy