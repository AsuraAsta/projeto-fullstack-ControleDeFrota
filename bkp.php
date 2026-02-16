<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Controle de Frota - TI Farid</title>
</head>



<body>
     
 
     <?php 
     #Aqui vc faz a conexão com o banco de dados 
    $conexao = mysqli_connect("localhost", "root", "", "db_controledefrota" );




    #tinha feito isso pra verficar se a conexão com o banco de dados está ok 

    if(! $conexao){
        #echo "Nao conectado";   
    }
    #echo"Conectado ao banco";


    #Aqui eu crio as variaveis e puxo pelo metodo post as infomações la do formulário 
    $nome = $_POST['nome'];
    $dataS = $_POST['data'];
    $veiculo = $_POST['carro'];
    $motivo = $_POST['motivo'];


    #Aqui estou inserindo as informações no banco , dentro da tabela registro uso
    $sql = "INSERT INTO db_controledefrota.registro_uso(condutor, data_uso, veiculo_usado, motivo_uso) values('$nome', '$dataS', '$veiculo', '$motivo')";

    if(mysqli_query($conexao, $sql)){
    echo "<br>Dados inseridos com sucesso!";

   
    
} else {
    echo "<br>Erro ao inserir: " . mysqli_error($conexao);
}

mysqli_close($conexao);
?>
     


</body>
</html>