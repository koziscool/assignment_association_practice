Parameters: {
    "utf8"=>"✓",
    "authenticity_token"=>"+8liMahjMiyA0WFF8ef8wzXu72+xXIKxlYzuI5UcTC4=",
    "post"=>{
        "title"=>"My Super Title",
        "body"=>"Some Body of a post",
        "tag_ids"=>["", "2", "3", "5"] },
    "commit"=>"Update Post",
    "id"=>"1"
}
```
<html>
 <body>
  <form method="post" action="/post", class="edit_post">
    <input  type="hidden"
    name="authenticity_token"
    value="+8liMahjMiyA0WFF8ef8wzXu72+xXIKxlYzuI5UcTC4=">
    <input type="hidden" name="id", value="1">
    <input type ="text" name = "post[title]" value = "My Super Title"><br>
    <input type ="text" name = "post[body]" value = "Some Body of a post"><br>
    
    <input  id="tag_ids" name="user[tag_ids[]]" type="checkbox" value="1"><br>
    <input  id="tag_ids" name="user[tag_ids[]]" type="checkbox" value="2"><br>
    <input  id="tag_ids" name="user[tag_ids[]]" type="checkbox" value="3"><br>
    <input  id="tag_ids" name="user[tag_ids[]]" type="checkbox" value="4"><br>
    <input  id="tag_ids" name="user[tag_ids[]]" type="checkbox" value="5"><br>

    <input type="submit" value="Update Post">
  </form>
 </body>
</html>
```
