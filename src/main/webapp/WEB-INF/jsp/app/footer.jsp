<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Start of Footer -->
                <footer id="footer-wrapper">
                        <div id="footer" class="container">
                                <div class="row">

                                        <div class="span3">
                                                <section class="widget">
                                                        <h3 class="title">小区黑板</h3>
                                                        <div class="textwidget">
                                                                <p>这是小区的黑板报</p>
                                                                <p>好的坏的都会写在这哦！</p>
                                                        </div>
                                                </section>
                                        </div>

                                        <div class="span3">
                                                <section class="widget"><h3 class="title">表扬通知</h3>
                                                        <ul>
                                                                <li><a href="#" title="Lorem ipsum dolor sit amet,">觉得不舒服的你是会计方法简单方便比较发达不就能看出</a> </li>
                                                                <li><a href="#" title="Lorem ipsum dolor sit amet,">Designing in WordPress</a></li>
                                                                <li><a href="#" title="Lorem ipsum dolor sit amet,">Server &amp; Database</a></li>
                                                                <li><a href="#" title="Lorem ipsum dolor sit amet, ">Theme Development</a></li>
                                                                <li><a href="#" title="Lorem ipsum dolor sit amet,">Website Dev</a></li>
                                                                <li><a href="#" title="Lorem ipsum dolor sit amet,">WordPress for Beginners</a></li>
                                                                <li><a href="#" title="Lorem ipsum dolor sit amet, ">WordPress Plugins</a></li>
                                                        </ul>
                                                </section>
                                        </div>

                                        <div class="span3">
                                                <section class="widget">
                                                        <h3 class="title">批评通知</h3>
                                                        <div id="twitter_update_list">
                                                                <ul>
                                                                        <li>暂无!</li>
                                                                </ul>
                                                        </div>
                                                        
                                                </section>
                                        </div>
 
                                        <div class="span3">
                                                <section class="widget">
                                                        <h3 class="title">感谢列表</h3>
                                                        <ul>
                                                                <li><a href="#" title="Lorem ipsum dolor sit amet,">感谢xxx助力小区工作，捐献100元</a> </li>
                                                                <li><a href="#" title="Lorem ipsum dolor sit amet,">Designing in WordPress</a></li>
                                                                <li><a href="#" title="Lorem ipsum dolor sit amet,">Server &amp; Database</a></li>
                                                                <li><a href="#" title="Lorem ipsum dolor sit amet, ">Theme Development</a></li>
                                                                <li><a href="#" title="Lorem ipsum dolor sit amet,">Website Dev</a></li>
                                                                <li><a href="#" title="Lorem ipsum dolor sit amet,">WordPress for Beginners</a></li>
                                                                <li><a href="#" title="Lorem ipsum dolor sit amet, ">WordPress Plugins</a></li>
                                                        </ul>
                                                </section>
                                        </div>

                                </div>
                        </div>
                        <!-- end of #footer -->

                        <!-- Footer Bottom -->
                        <div id="footer-bottom-wrapper">
                                <div id="footer-bottom" class="container">
                                        <div class="row">
                                                <div class="span6">
                                                        <p class="copyright">
                                                                Copyright © 2013. All Rights Reserved by KnowledgeBase.
                                                        </p>
                                                </div>
                                                <div class="span6">
                                                        <!-- Social Navigation -->
                                                        <ul class="social-nav clearfix">
                                                                <li class="linkedin"><a target="_blank" href="#"></a></li>
                                                                <li class="stumble"><a target="_blank" href="#"></a></li>
                                                                <li class="google"><a target="_blank" href="#"></a></li>
                                                                <li class="deviantart"><a target="_blank" href="#"></a></li>
                                                                <li class="flickr"><a target="_blank" href="#"></a></li>
                                                                <li class="skype"><a target="_blank" href="skype:#?call"></a></li>
                                                                <li class="rss"><a target="_blank" href="#"></a></li>
                                                                <li class="twitter"><a target="_blank" href="#"></a></li>
                                                                <li class="facebook"><a target="_blank" href="#"></a></li>
                                                        </ul>
                                                </div>
                                        </div>
                                </div>
                        </div>
                        <!-- End of Footer Bottom -->

                </footer>
                <!-- End of Footer -->

                <a href="#top" id="scroll-top"></a>

                <!-- script -->
                <script type='text/javascript' src='${basePath}/resources/app/js/jquery-1.8.3.min.js'></script>
                <script type='text/javascript' src='${basePath}/resources/app/js/jquery.easing.1.3.js'></script>
                <script type='text/javascript' src='${basePath}/resources/app/js/prettyphoto/jquery.prettyPhoto.js'></script>
                <script type='text/javascript' src='${basePath}/resources/app/js/jflickrfeed.js'></script>
				<script type='text/javascript' src='${basePath}/resources/app/js/jquery.liveSearch.js'></script>
                <script type='text/javascript' src='${basePath}/resources/app/js/jquery.form.js'></script>
                <script type='text/javascript' src='${basePath}/resources/app/js/jquery.validate.min.js'></script>
                <script type='text/javascript' src='${basePath}/resources/app/js/custom.js'></script>

                <script src="${basePath}/resources/app/js/layui.js"></script>
                <script>
                layui.use('carousel', function(){
                  var carousel = layui.carousel;
                  
                  //建造实例
                  /*carousel.render({
                    elem: '#test1'
                    ,index: 2
                    //,full: true
                    ,arrow: 'always'
                    //,autoplay: false
                    //,indicator: 'outside'
                    //,trigger: 'hover'
                  });
                  
                  //事件
                  carousel.on('change(test1)', function(res){
                    console.log(res)
                  });

                  carousel.render({
                    elem: '#test2'
                    ,interval: 1800
                    //,full: true
                    ,anim: 'fade'
                    ,height: '120px'
                  });
                  
                  carousel.render({
                    elem: '#test3'
                    //,full: true
                    ,arrow: 'always'
                    //,autoplay: false
                    //,indicator: 'outside'
                    //,trigger: 'hover'
                    ,anim: 'updown'
                    //,full: true
                  });*/
                  
                  carousel.render({
                    elem: '#test4'
                    ,arrow: 'none'
                    ,trigger: 'hover'
                    ,anim: 'updown'
                    ,width: '100%'
                    ,height: '543px'
                    ,interval: 2700
                  });
                });
                </script>
             </body>
</html>