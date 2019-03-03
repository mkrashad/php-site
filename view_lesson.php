<?php 
include("blocks/bd.php"); //Соединяемся с базой

if (isset($_GET['id'])){

    $id = $_GET['id'];
}

$result = mysqli_query($db,"SELECT * FROM lessons WHERE id='$id'");

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
                    <td valign="top">
                        <p class="view_title"><?php echo $myrow['title']; ?></p>
                        <p class="view_date">Дата добавления: <?php echo $myrow['date']; ?></p>
                        <p class="view_date">Автор: <?php echo $myrow['author']; ?></p>
					    <p><?php echo $myrow['text']; ?></p>					 
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