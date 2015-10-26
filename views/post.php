<!-- Page Header -->
<!-- Set your background image for this header on the line below. -->
<header class="intro-header" style="background-image: url('img/post-bg.jpg')">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <div class="post-heading">
                    <h1 class="post-title"><?php echo $post['post_title'] ?></h1>

                    <h2 class="subheading"><?php echo $post['post_description'] ?></h2>
                    <span class="meta">Posted by <a
                            href="#"><?php echo $post['author_name'] ?></a> on <?php echo $post['post_created'] ?></span>
                </div>
            </div>
        </div>
    </div>
</header>

<!-- Post Content -->
<article>
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1"><?php echo $post['post_text'] ?></div>
        </div>
    </div>
</article>

<hr>

