<?php 
include("blocks/bd.php"); //Соединяемся с базой
$result = mysqli_query($db,"SELECT title, meta_d, meta_k, text FROM settings WHERE page='index'");
$myrow = mysqli_fetch_array($result);
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="<?php echo $myrow['meta_d']; ?>">
<meta name="keywords" content="<?php echo $myrow['meta_k']; ?> ">
<link rel="stylesheet" href="css/style.css">
<title><?php echo $myrow['title']; ?></title>
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
                    <td valign="top"><?php echo $myrow['text']; ?></td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <!--Подключаем футер сайта-->
        <?php include("blocks/footer.php");?>
    </tr>
</table>
</body>
</html>