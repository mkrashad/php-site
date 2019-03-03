<?php 
include("blocks/bd.php"); //Соединяемся с базой
$result = mysqli_query($db,"SELECT title, meta_d, meta_k, text FROM settings WHERE page='lessons'");
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
										 <p><?php echo $myrow['text']; ?></p>
										 <?php 
										 $result = mysqli_query($db,"SELECT id,title,description,author,date FROM lessons");
										
										 $myrow = mysqli_fetch_array($result);

											do{
											printf('<table class="lesson">
                    	<tr>
											<td class="lesson_title"><p class="lesson_name"><a href="view_lesson.php?id=%s">%s</a></p>
											<p class="lesson_adds">Дата добавления: %s</p>
											<p class="lesson_adds">Автор урока: %s</p>
											</td>
										</tr>
										

                    <tr>
                      <td>%s</td><br><br>
                    </tr>
										</table>',$myrow['id'],$myrow['title'],$myrow['date'],$myrow['author'],$myrow['description']);


									} while ($myrow = mysqli_fetch_array($result));
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