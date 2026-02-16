<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Status do Registro - TI Farid</title>
    <style>
        /* CSS para deixar o visual "bonitinho" */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f7f6;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .card {
            background: white;
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            text-align: center;
            max-width: 400px;
            width: 90%;
        }
        .success { color: #2ecc71; font-weight: bold; font-size: 1.2rem; }
        .error { color: #e74c3c; font-weight: bold; }
        .info { color: #3498db; }
        
        .btn-voltar {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #2c3e50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background 0.3s;
        }
        .btn-voltar:hover {
            background-color: #34495e;
        }
    </style>
</head>
<body>

<div class="card">
    <?php 
    // Configurações de conexão
    $conexao = mysqli_connect("localhost", "root", "", "db_controledefrota");

    if (!$conexao) {
        echo "<p class='error'>Erro de conexão: " . mysqli_connect_error() . "</p>";
    } else {
        // Só tenta inserir se os dados vierem via POST (evita os avisos de Undefined Key)
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $nome    = $_POST['nome'] ?? '';
            $dataS   = $_POST['data'] ?? '';
            $veiculo = $_POST['carro'] ?? '';
            $motivo  = $_POST['motivo'] ?? '';

            $sql = "INSERT INTO registro_uso (condutor, data_uso, veiculo_usado, motivo_uso) 
                    VALUES ('$nome', '$dataS', '$veiculo', '$motivo')";

            if (mysqli_query($conexao, $sql)) {
                echo "<h2>✅ Sucesso!</h2>";
                echo "<p class='success'>O uso do veículo <strong>$veiculo</strong> foi registrado para <strong>$nome</strong>.</p>";
            } else {
                echo "<h2>❌ Erro</h2>";
                echo "<p class='error'>Erro ao inserir: " . mysqli_error($conexao) . "</p>";
            }
        } else {
            // Caso o João Pedro acesse a página direto sem o formulário
            echo "<h2>ℹ️ Aviso</h2>";
            echo "<p class='info'>Nenhum dado foi enviado. Use o formulário de controle de frota.</p>";
        }
        mysqli_close($conexao);
    }
    ?>

    <a href="index.html" class="btn-voltar">⬅ Voltar para o Início</a>
</div>

</body>
</html>