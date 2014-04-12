<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>Thumbnail Navigator with Arrows Demo - Jssor Slider</title>
</head>
<body style="background:#fff; font-family: Verdana">
    <!-- it works the same with all jquery version from 1.3.1 to 2.0.3 -->
    <script type="text/javascript" src="static/js/jquery-1.9.1.min.js"></script>
    <!-- use jssor.slider.mini.js (39KB) or jssor.sliderc.mini.js (31KB, with caption, no slideshow) or jssor.sliders.mini.js (26KB, no caption, no slideshow) instead for release -->
    <!-- jssor.slider.mini.js = jssor.sliderc.mini.js = jssor.sliders.mini.js = (jssor.core.js + jssor.utils.js + jssor.slider.js) -->
    <script type="text/javascript" src="static/js/jssor.core.js"></script>
    <script type="text/javascript" src="static/js/jssor.utils.js"></script>
    <script type="text/javascript" src="static/js/jssor.slider.js"></script>
    <script>
        jQuery(document).ready(function ($) {
            var options = {
                $AutoPlay: true,                                    //[Optional] Whether to auto play, to enable slideshow, this option must be set to true, default value is false
                $AutoPlayInterval: 4000,                            //[Optional] Interval (in milliseconds) to go for next slide since the previous stopped if the slider is auto playing, default value is 3000
                $SlideDuration: 500,                                //[Optional] Specifies default duration (swipe) for slide in milliseconds, default value is 500
                $DragOrientation: 3,                                //[Optional] Orientation to drag slide, 0 no drag, 1 horizental, 2 vertical, 3 either, default value is 1 (Note that the $DragOrientation should be the same as $PlayOrientation when $DisplayPieces is greater than 1, or parking position is not 0)

                $ThumbnailNavigatorOptions: {
                    $Class: $JssorThumbnailNavigator$,              //[Required] Class to create thumbnail navigator instance
                    $ChanceToShow: 2,                               //[Required] 0 Never, 1 Mouse Over, 2 Always

                    $SpacingX: 10,                                  //[Optional] Horizontal space between each thumbnail in pixel, default value is 0
                    $SpacingY: 3,                                   //[Optional] Vertical space between each thumbnail in pixel, default value is 0
                    $DisplayPieces: 6,                              //[Optional] Number of pieces to display, default value is 1
                    $ParkingPosition: 204,                          //[Optional] The offset position to park thumbnail,

                    $DirectionNavigatorOptions: {
                        $Class: $JssorDirectionNavigator$,              //[Requried] Class to create direction navigator instance
                        $ChanceToShow: 2,                               //[Required] 0 Never, 1 Mouse Over, 2 Always
                        $AutoCenter: 2,                                 //[Optional] Auto center arrows in parent container, 0 No, 1 Horizontal, 2 Vertical, 3 Both, default value is 0
                        $Steps: 3                                       //[Optional] Steps to go for each navigation request, default value is 1
                    }
                }
            };

            var jssor_slider1 = new $JssorSlider$("slider1_container", options);
        });
    </script>
    <!-- Jssor Slider Begin -->
    <!-- You can move inline styles (except 'top', 'left', 'width' and 'height') to css file or css block. -->
		
	<div>
		<table>
			<tr>
				<td>
					<img src="static/img/MAW_logo.png" width="200pn">
				</td>
				<td>
					<img src="">
				</td>
				<td>
					Mesa 10
				</td>
			</tr>
		</table>
	</div>
	
	<br>
	<br>
	
	<center>
	<table>
		<tr>
			<td>
					<div id="slider1_container" style="position: relative; width: 600px;
						height: 420px;">

						<!-- Loading Screen -->
						<div u="loading" style="position: absolute; top: 0px; left: 0px;">
							<div style="filter: alpha(opacity=70); opacity:0.7; position: absolute; display: block;
								background-color: #000; top: 0px; left: 0px;width: 100%;height:100%;">
							</div>
							<div style="position: absolute; display: block; background: url(../img/loading.gif) no-repeat center center;
								top: 0px; left: 0px;width: 100%;height:100%;">
							</div>
						</div>

						<!-- Slides Container -->
						<div u="slides" style="cursor: move; position: absolute; left: 0px; top: 0px; width: 600px; height: 300px;
							overflow: hidden;">
							<div>
								<img u="image" src="static/img/aviao1.jpg" />
								<img u="thumb" src="static/img/aviao1.jpg" />
							</div>
							<div>
								<img u="image" src="static/img/aviao2.jpg" />
								<img u="thumb" src="static/img/aviao2.jpg" />
							</div>
							<div>
								<img u="image" src="static/img/aviao2.jpg" />
								<img u="thumb" src="static/img/aviao2.jpg" />
							</div>
							<div>
								<img u="image" src="static/img/aviao2.jpg" />
								<img u="thumb" src="static/img/aviao2.jpg" />
							</div>
							<div>
								<img u="image" src="static/img/aviao2.jpg" />
								<img u="thumb" src="static/img/aviao2.jpg" />
							</div>
							<div>
								<img u="image" src="static/img/aviao2.jpg" />
								<img u="thumb" src="static/img/aviao2.jpg" />
							</div>
							<div>
								<img u="image" src="static/img/aviao2.jpg" />
								<img u="thumb" src="static/img/aviao2.jpg" />
							</div>
							<div>
								<img u="image" src="static/img/aviao2.jpg" />
								<img u="thumb" src="static/img/aviao2.jpg" />
							</div>
							<div>
								<img u="image" src="static/img/aviao2.jpg" />
								<img u="thumb" src="static/img/aviao2.jpg" />
							</div>
							<div>
								<img u="image" src="static/img/aviao2.jpg" />
								<img u="thumb" src="static/img/aviao2.jpg" />
							</div>
						</div>

						<!-- Thumbnail Navigator Skin Begin -->
						<div u="thumbnavigator" class="jssort05" style="position: absolute; width: 500px; height: 80px; left:50px; bottom: 20px;">
							<!-- Thumbnail Item Skin Begin -->
							<style>
								/* jssor slider thumbnail navigator skin 05 css */
								/*
								.jssort05 .p           (normal)
								.jssort05 .p:hover     (normal mouseover)
								.jssort05 .pav           (active)
								.jssort05 .pav:hover     (active mouseover)
								.jssort05 .pdn           (mousedown)
								*/
								.jssort05 .f
								{
									clip: rect(8px 63px 63px 8px);
								}
								.jssort05 .i
								{
									position: absolute;
									background: #000;
									filter: alpha(opacity=30);
									opacity: .3;
									width: 72px;
									height: 72px;
									top: 0;
									left: 0;
									
									transition: background-color .6s;
									-moz-transition: background-color .6s;
									-webkit-transition: background-color .6s;
									-o-transition: background-color .6s;
								}
								.jssort05 .pav .i
								{
									background: #fff;
									filter: alpha(opacity=80);
									opacity: .8;
								}
								.jssort05 .pdn .i { background: none; }
								
								.jssort05 .p:hover .i, .jssort05 .pav:hover .i
								{
									background: #fff;
									filter: alpha(opacity=30);
									opacity: .3;
								}
								.jssort05 .p:hover .i
								{
									transition: none;
									-moz-transition: none;
									-webkit-transition: none;
									-o-transition: none;
								}
							</style>
							<div u="slides" style="cursor: move;">
								<div u="prototype" class="p" style="POSITION: absolute; WIDTH: 72px; HEIGHT: 72px; TOP: 0; LEFT: 0;">
									<div class="o" style="position:absolute;top:1px;left:1px;width:72px;height:72px;overflow:hidden;">
										<ThumbnailTemplate class="b" style="width:72px;height:72px; border: none;position:absolute; TOP: 0; LEFT: 0;"></ThumbnailTemplate>
										<div class="i"></div>
										<ThumbnailTemplate class="f" style="width:72px;height:72px;border: none;position:absolute; TOP: 0; LEFT: 0;"></ThumbnailTemplate>
									</div>
								</div>
							</div>
							<!-- Thumbnail Item Skin End -->
							
							<!-- Direction Navigator Skin Begin -->
							<style>
								/* jssor slider direction navigator skin 06 css */
								/*
								.jssord06l              (normal)
								.jssord06r              (normal)
								.jssord06l:hover        (normal mouseover)
								.jssord06r:hover        (normal mouseover)
								.jssord06ldn            (mousedown)
								.jssord06rdn            (mousedown)
								*/
								.jssord06l, .jssord06r, .jssord06ldn, .jssord06rdn
								{
									position: absolute;
									cursor: pointer;
									display: block;
									background: url(static/img/d06.png) no-repeat;
									overflow:hidden;
								}
								.jssord06l { background-position: -8px -38px; }
								.jssord06r { background-position: -68px -38px; }
								.jssord06l:hover { background-position: -128px -38px; }
								.jssord06r:hover { background-position: -188px -38px; }
								.jssord06ldn { background-position: -248px -38px; }
								.jssord06rdn { background-position: -308px -38px; }
							</style>
							<!-- Arrow Left -->
							<span u="arrowleft" class="jssord06l" style="width: 45px; height: 45px; top: 123px; left: -40px;">
							</span>
							<!-- Arrow Right -->
							<span u="arrowright" class="jssord06r" style="width: 45px; height: 45px; top: 123px; right: -40px">
							</span>
							<!-- Direction Navigator Skin End -->
						</div>
						<!-- ThumbnailNavigator Skin End -->
						<a style="display: none" href="http://www.jssor.com">jQuery Slide</a>
						<!-- Trigger -->
					</div>
					<!-- Jssor Slider End -->
			</td>

			<td>
				<img src="static/img/comprar.png" style="margin-left:30px" width="100pn" />
			</td>
		</tr>
	</table>
	
	</center>

</body>
</html>