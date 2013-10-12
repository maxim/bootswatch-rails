This project hasn't been kept up to date very well for the usual reason: I
haven't needed it myself in a while. Here are my thoughts on how to keep it
going.

## Keeping up with upstream bootswatches

![One does not simply edit SCSS files](http://i.imgur.com/0N8Tf0U.jpg)

As it stands, this project is not popular enough to be maintained entirely by
hand. That's why I wrote ruby scripts to convert most of LESS to SCSS. This
automation means that you can't simply edit some scss file and submit a pull
request. The next time we run the converter, your fix will disappear. So here's
how to contribute in a way that avoids this problem.

## I want to fix SCSS issue

#### I know ruby

1. Checkout your fork
2. Checkout current bootswatch submodule
3. Edit converter script such that it fixes the problem you found
4. Run `rake convert`
5. Run `./rearranges` and fix variable declaration orders
6. Follow instructions in `CONVERSION.md` and make manual fixes
7. Submit a pull request

#### I don't know ruby

1. Checkout your fork
2. Fix the SCSS issue that you found
3. In `CONVERSION.md` explain the exact steps to fix the issue
4. Submit a pull request

## I want to update all bootswatches to latest versions

1. Checkout your fork
2. Checkout current bootswatch submodule
3. Pull in latest bootswatch submodule
4. Run `rake convert`
5. Run `./rearranges` and fix variable declaration orders
6. Follow instructions in `CONVERSION.md` and make manual fixes 
7. Try all the bootswatches and make sure (as best you can) that they work
8. If any additional fixes are required, refer to "I want to fix SCSS issue"
9. Submit a pull request

## I want to help automate this stuff better

You have to know ruby for this one.

1. Checkout your fork
2. Work on converter and rearranges scripts, etc
3. Submit pull requests
