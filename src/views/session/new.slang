h1 Sign In

- if user.errors
  ul.errors
  - user.errors.each do |error|
    li = error.to_s

form action="/session" method="post"
  == csrf_tag
  .form-group
    input.form-control type="email" name="email" placeholder="Email"
  .form-group
    input.form-control type="password" name="password" placeholder="Password"
  .form-group
    button.btn.btn-primary.btn-lg type="submit" Sign In
<hr/>
== link_to("Don't have an account yet?", "/signup")
