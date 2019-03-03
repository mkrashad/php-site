<?php 
// include("lock.php");
include("blocks/bd.php");

if(isset($_POST['id'])){$id = $_POST['id'];}
?>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
<title>Обработчик</title>
</head>
<body>
<table class="main_border">
<!--Подключаем шапку сайта-->
<?php include("blocks/header.php"); ?> 
    <tr>
        <td>
            <table>
                <tr>
                <!--Подключаем левый блок сайта-->
                  <?php include("blocks/lefttd.php"); ?>
                    <td valign="top">
                    <?php 
                    
                    if(isset($id)){

                        $result = mysqli_query($db,"DELETE FROM lessons WHERE id='$id'");
                        
                        if($result == true) { echo "<p>Ваш урок успешно удален</p>";}
                        else{echo "<p>Ваш урок не удален</p>";}
                    }
                    else{
                        echo "<p>Вы не выбрали урок</p>";
                    }
                    ?>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <!--Подключаем футер сайта-->
        <?php include("blocks/footer.php"); ?>
    </tr>
</table>
</body>
</html>