<?php 
// include("lock.php");
include("blocks/bd.php");

if(isset($_POST['title'])){$title = $_POST['title']; if($title == '') {unset($title);}}
if(isset($_POST['meta_d'])){$meta_d = $_POST['meta_d']; if($meta_d == '') {unset($meta_d);}}
if(isset($_POST['meta_k'])){$meta_k = $_POST['meta_k']; if($meta_k == '') {unset($meta_k);}}
if(isset($_POST['date'])){$date = $_POST['date']; if($date == '') {unset($date);}}
if(isset($_POST['description'])){$description = $_POST['description']; if($description == '') {unset($description);}}
if(isset($_POST['text'])){$text = $_POST['text']; if($text == '') {unset($text);}}
if(isset($_POST['author'])){$author = $_POST['author']; if($author == '') {unset($author);}}

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
                    
                    if(isset($title) && isset($meta_d) && isset($meta_k) && isset($date) && isset($description) && isset($text) && isset($author)){

                        //Здесь пишем что можно заносить информацию в базу
                        $result = mysqli_query($db,"INSERT INTO lessons (title,meta_d,meta_k,date,description,text,author) VALUES ('$title','$meta_d','$meta_k','$date','$description','$text','$author')");
                        
                        if($result == true) { echo "<p>Ваш урок успешно добавлен</p>";}
                        else{echo "<p>Ваш урок не добавлен</p>";}
                    }
                    else{
                        echo "<p>Вы ввели не всю информацию</p>";
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