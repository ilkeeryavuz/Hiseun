<div id="instagram-feed">
    <h2><?php echo $title; ?></h2>
    <style>
        <?php echo $stylesheet; ?>
    </style>
    <?php
    if ($is_error) {
    ?>
    <div class="row">
        <h4><?php echo $error; ?><h4>
    </div>
    <?php
    } else { ?>
    <div class="row">

    <?php
      foreach ($images as $image) {
          echo '<div class="image-wrapper">';
          $link = 'https://www.instagram.com/' . $username;
          echo '<a target="_blank" href="' . $link . '">';
          echo '<img src="'.$image.'"/>';
          echo '</a>';
          echo '</div>';
      }
    ?>

    <?php } ?>
    </div>
</div>
