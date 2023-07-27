
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>creator_form</title>
    <link rel="stylesheet" href="css/cre_css.css">
  </head>
  <body>
    <div class="main-container">
    <form action="creator_form" method="post">
<center>
<h1 class="h1tag"> REGISTRATION FORM </h1>
<table>
<tr>
<td><label for="fname">First Name</label></td>
<td><input type="text" name="cre_name" id="fname" class="boxcontain" ></td>
</tr>
<tr>
<td><label for="cusid">Creator ID</label></td>
<td><input type="text" name="cre_id" id="cusid" class="boxcontain" ></td>
</tr>
<tr>
<td><label for="cate">Platform</label></td>
<td><input type="text" name="cre_plat" id="cate" class="boxcontain"></td>
</tr>
<tr>
<td>Gender</td>
<td><input type="radio"  id="age1" name="age" >
<label for="age1">Male</label>
 <input type="radio" id="age2" name="age">
<label for="age1">Female</label>
</td>
</tr>
<tr>
<td><label for="chan">Channel</label></td>
<td><input type="text" name="cre_channel" id="chan" class="boxcontain"></td>
</tr>
<tr>
<td><label for="view">Viewer's Count</label></td>
<td><input type="text" name="cre_count" id="view" class="boxcontain"></td>
</tr>
<tr>
<td><label for="subs">Subcribers</label></td>
<td><input type="text" name="sub" id="subs" class="boxcontain"></td>
</tr>
<tr>
<td><label for="emai">Email</label></td>
<td><input type="email" name="email" id="emai" class="boxcontain"></td>
</tr>
<tr>
<td><p><label for="w3review">Description</label></p></td>
<td><textarea id="w3review" name="desc" rows="40" cols="50" class="boxcontain1"></textarea></td>
</tr>
</table>
<button type="button"><a href="creator_profile">submit</a></button>
</center>
</form>
</div>
  </body>
</html>