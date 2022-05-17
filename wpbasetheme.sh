#!/bin/zsh

echo "\nPlease enter your name.\n"
read yourname
sleep 1
echo "\nHello $yourname. Nice meet you!"
sleep 1
echo "We're about to create your Wosrdpress theme template\n"
sleep 1
echo "Please type the prefered name for your theme.\n"
read themename
sleep 2
mkdir $themename
sleep 2
mkdir -p $themename/{assets/{css,images,js},inc,template-parts/{footer,header,navigation,post}}
touch $themename/{assets/css/main.css,404.php,archive.php,comments.php,footer.php,front-page.php,functions.php,header.php,index.php,page.php,README.txt,rtl.css,screenshot.png,search.php,searchform.php,sidebar.php,single.php,style.css}

# style.css header.
echo "/*
Theme Name: $themename
Theme URI: https://wordpress.org/themes/$themename/
Author: $yourname
Author URI: https://wordpress.org/
Description: Our default theme for 2020 is designed to take full advantage of the flexibility of the block editor. Organizations and businesses have the ability to create dynamic landing pages with endless layouts using the group and column blocks. The centered content column and fine-tuned typography also makes it perfect for traditional blogs. Complete editor styles give you a good idea of what your content will look like, even before you publish. You can give your site a personal touch by changing the background colors and the accent color in the Customizer. The colors of all elements on your site are automatically calculated based on the colors you pick, ensuring a high, accessible color contrast for your visitors.
Tags: blog, one-column, custom-background, custom-colors, custom-logo, custom-menu, editor-style, featured-images, footer-widgets, full-width-template, rtl-language-support, sticky-post, theme-options, threaded-comments, translation-ready, block-styles, wide-blocks, accessibility-ready
Version: 1.3
Requires at least: 5.0
Tested up to: 5.4
Requires PHP: 7.0
License: GNU General Public License v2 or later
License URI: http://www.gnu.org/licenses/gpl-2.0.html
Text Domain: $themename
This theme, like WordPress, is licensed under the GPL. Use it to make something cool, have fun, and share what you've learned with others.
*/" > $themename/style.css

# Adding header.php, sidebar.php and footer.php to base files
echo "<?php get_header(); ?>\n<?php get_sidebar(); ?>\n<?php get_footer(); ?>" > $themename/{404.php,archive.php,comments.php,front-page.php,index.php,page.php,search.php,single.php}


echo "\nAll done!\n"