<?php
// include("lock.php");
include("blocks/bd.php"); 
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
<title>Страница удаления нового урока</title>
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
                    <p><strong>Выберите урок для удаления</strong></p>
                    <form action="drop_lesson.php" method="post">
                    <?php 		
                    $result = mysqli_query($db,"SELECT title,id FROM lessons ORDER BY id");
                    $myrow = mysqli_fetch_array($result);

                    do {
                        printf("<p><input name='id' type='radio' value='%s'><label> %s</label></p>",$myrow["id"],$myrow["title"]);
                      }
                      
                    while($myrow = mysqli_fetch_array($result));  
                    ?>
                    <p><input name="submit" type="submit" value="Удалить урок"></p>
                    </form>
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