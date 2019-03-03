<?php
// include("lock.php");
include("blocks/bd.php"); 

if(isset($_GET['id'])){$id = $_GET['id'];}

?>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
<title>Страница добавления нового урока</title>
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
                    
										if (!isset($id))
										{
                    $result = mysqli_query($db,"SELECT title,id FROM lessons ORDER BY id");
                    $myrow = mysqli_fetch_array($result);

                    do {
                        printf("<p><a href='edit_lesson.php?id=%s'>%s</p>",$myrow["id"],$myrow["title"]);
                      }
                      
                    while($myrow = mysqli_fetch_array($result));  
                }
								
                else{

                  $result = mysqli_query($db,"SELECT * FROM lessons WHERE id=$id");
                  $myrow = mysqli_fetch_array($result);

                  print <<<HERE

                  <form name="form1" method="post" action="update_lesson.php">
                  <p>
                  <label for="title">Введите название урока: </label><br>
                  <input value="$myrow[title]" type="text" name="title" id="title">
                  </p>
                  <p>
                  <label for="meta_d">Введите краткое описание урока: </label><br>
                  <input value="$myrow[meta_d]" type="text" name="meta_d" id="meta_d">
                  </p>
                  <p>
                  <label for="meta_k">Введите ключевые слова для урока: </label><br>
                  <input value="$myrow[meta_k]" type="text" name="meta_k" id="meta_k">
                  </p>
                  <p>
                  <label for="date">Введите дату добавления урока: </label><br>
                  <input value="$myrow[data]" type="date" name="date" id="date">
                  </p>
                  <p>
                  <label for="description">Введите краткое описание урока с тэгами абзацев: </label>
                  <textarea name="description" id="description" cols="40" rows="10">$myrow[description]</textarea>
                  </p>
                  <p>
                  <label for="text">Введите полный текст урока с тэгами: </label><br>
                  <textarea name="text" id="text" cols="40" rows="20">$myrow[text]</textarea>
                  </p>
                  <p>
                  <label for="author">Введите автор урока: </label><br>
                  <input value="$myrow[author]" type="author" name="author" id="author">
                  </p>
                  <input name="id" type="hidden" value="$myrow[id]">

                  <p>
                  <input type="submit" name="submit" id="submit" value="Сохранить изменения">
                  </p>
                  </form>          
HERE;
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