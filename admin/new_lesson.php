
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
                  <form name="form1" method="post" action="add_lesson.php">
                  <p>
                  <label for="title">Введите название урока: </label><br>
                  <input type="text" name="title" id="title">
                  </p>
                  <p>
                  <label for="meta_d">Введите краткое описание урока: </label><br>
                  <input type="text" name="meta_d" id="meta_d">
                  </p>
                  <p>
                  <label for="meta_k">Введите ключевые слова для урока: </label><br>
                  <input type="text" name="meta_k" id="meta_k">
                  </p>
                  <p>
                  <label for="date">Введите дату добавления урока: </label><br>
                  <input type="date" name="date" id="date">
                  </p>
                  <p>
                  <label for="description">Введите краткое описание урока с тэгами абзацев: </label>
                  <textarea name="description" id="description" cols="40" rows="10"></textarea>
                  </p>
                  <p>
                  <label for="text">Введите полный текст урока с тэгами: </label><br>
                  <textarea name="text" id="text" cols="40" rows="20"></textarea>
                  </p>
                  <p>
                  <label for="author">Введите автор урока: </label><br>
                  <input type="author" name="author" id="author">
                  </p>
                  <p>
                  <input type="submit" name="submit" id="submit" value="Занести урок в базу">
                  </p>
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