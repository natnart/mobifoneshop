@section('content')
@extends('welcome')


        <!-- Slide Start -->
        <div class="hero">
                <div class="row">
                    <!-- Thẻ Chứa Slideshow -->
                    <div class="slideshow-container">
                    <!-- Kết hợp hình ảnh và nội dung cho mội phần tử trong slideshow-->
                 
                        @foreach($slider as $key => $slide)
                         
                         
                    <div class="mySlides">
                        
                        <img alt="{{$slide->slider_desc}}" src="{{asset('public/uploads/slider/'.$slide->slider_image)}}" style="height: 500px; width:100%" >
                       
                        
                    </div>

                            @endforeach
                    <!-- Nút điều khiển mũi tên-->
                    <i class="prev" onclick="plusSlides(-1)">❮</i>
                    <i class="next" onclick="plusSlides(1)">❯</i>
                    </div>
                    <br>
                    </div>      
            </div>
            <!-- Nút tròn điều khiển slideshow-->
            <div class="dot-class" style="text-align:center">
                        <span class="dot" onclick="currentSlide(1)"></span>
                        <span class="dot" onclick="currentSlide(2)"></span>
                        <span class="dot" onclick="currentSlide(3)"></span>
            </div>
        


        <!-- Service Start -->
        <div class="service">
            <div class="container" >
                <!-- Row start -->
                    <H2>Dịch vụ di động</H2>

                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs  tabs" role="tablist">
                            <li class="nav-item">
                                                                        
                             <li class="nav-item" style="width: 200px; font-size: 20px;text-align: center ">
                                <a class="nav-link active" data-toggle="tab" href="#call" role="tab">Gói cước thoại</a>
                            </li>
                           
                            <li class="nav-item" style="width: 200px; font-size: 20px;text-align: center">
                                <a class="nav-link" data-toggle="tab" href="#data" role="tab">Gói data</a>
                            </li>
                            <li class="nav-item" style="width: 200px; font-size: 20px;text-align: center">
                                <a class="nav-link" data-toggle="tab" href="#service" role="tab">Dich vu khác</a>
                            </li>
                           </li>
                        </ul>
                        <!-- Tab panes -->
                        <div class="tab-content tabs card-block">
                           

                             <div class="tab-pane active" id="call" role="tabpanel" >
                                 <div class="owl-carousel service-carousel">
                                    @foreach($all_call_service as $key => $call_serv)
                                        <div class="service-item">
                                            <div class="service-text">
                                                <form>

                                                    @csrf           
                                                    <i class="fas fa-phone-alt" style="font-size: 50px ; border: 1px solid; padding: 19px"></i>
                                                        <h2 class="name">{{$call_serv->call_service_name}}</h2>    <p>{{ number_format($call_serv->call_service_price,0,',','.') }}vnd  </p>
                                                        {{-- <p>{!!$call_serv->call_service_content!!}</p> --}}
                                                            <input type="button" value="Chi tiết" class="chitiet" data-id_product="{{$call_serv->call_service_id}}"  name="chi-tiet" > 
                                                            </form>
                                            </div>
                                        </div>
                                    @endforeach
                                
                                </div>
                             </div>
                            <div class="tab-pane" id="data" role="tabpanel">
                                <div class="owl-carousel service-carousel">
                                    @foreach($all_data_service as $key => $data_serv)
                                        <div class="service-item">
                                            <div class="service-text">
                                                <form>
                                                    @csrf           
                                                    <i class="fas fa-rss" style="font-size: 50px ; border: 1px solid; padding: 19px"></i>
                                                        <h2 class="name">{{$data_serv->data_service_name}}</h2>    <p>{{ number_format($data_serv->data_service_price,0,',','.') }}vnd  </p>
                                                      {{--   <p>{!!$data_serv->data_service_content!!}</p> --}}
                                                            <input type="button" value="Chi tiết" class="chitiet" data-id_product="{{$data_serv->data_service_id}}"  name="chi-tiet" > 
                                                            </form>
                                            </div>
                                        </div>
                                    @endforeach
                                
                                </div>
                            </div>
                             <div class="tab-pane" id="service" role="tabpanel">
                                <div class="owl-carousel service-carousel">
                                    @foreach($all_service as $key => $serv)
                                        <div class="service-item">
                                            <div class="service-text">                                                       
                                               <form>
                                                    @csrf  
                                                    <img src="public/uploads/service/{{ $serv->service_images }}" style="    width: 98px;
                                                        margin-top: 15px;
                                                        margin-left: 36%;
                                                        padding-bottom: 110px;">          
                                                        <h2 class="name">{{$serv->service_name}}</h2>     
                                                     {{--    <p>{!!$serv->service_content!!}</p> --}}
                                                            <input type="button" value="Chi tiết" class="chitiet" data-id_product="{{$serv->service_id}}"  name="chi-tiet" >
                                                             
                                                            </form>
                                            </div>
                                        </div>
                                    @endforeach

                                </div>

                            </div>


                        </div>
                </div>
</div></div>
        <!-- Service End -->
        

        <!-- About Start -->
        <div class="about">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-5 col-md-6">
                        <div class="about-img">
                            <img src="public/frontend/img/about.jpg" alt="Image">
                        </div>
                    </div>
                    <div class="col-lg-7 col-md-6">
                        <div class="section-header text-left">
                            <p>Giới thiệu mobifone</p>
                            <h2>Lịch sử hình thành</h2>
                        </div>
                        <div class="about-text">
                            <p>
                                MobiFone được thành lập ngày 16/04/1993 với tên gọi ban đầu là Công ty thông tin di động. Ngày 01/12/2014, Công ty được chuyển đổi thành Tổng công ty Viễn thông MobiFone, trực thuộc Bộ Thông tin và Truyền thông, kinh doanh trong các lĩnh vực: dịch vụ viễn thông truyền thống, VAS, Data, Internet & truyền hình IPTV/cable TV, sản phẩm khách hàng doanh nghiệp, dịch vụ công nghệ thông tin, bán lẻ và phân phối và đầu tư nước ngoài.
                            </p>
                            
                            <a class="btn" href="{{url("gioi-thieu")}}">Xem thêm</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- About End -->


         <!-- product list -->
   <div class="product">
        <div class="container">
            <div class="section-header">
                <h2>Sản phẩm mới nhất</h2>
            </div>
            <div class="row" id="best-products">

                <div class="new-product owl-carousel service-carousel" >
                @foreach($all_product as $key =>$pro)
                    <div class="product-card" >
                  
                        <div class="product-card-img">
                        
                        <img src="public/uploads/products/{{$pro->product_images}}">>
                           
                        </div>
                        <div class="product-card-info">
                            <div class="product-btn">
                                <button class="btn-flat btn-hover btn-shop-now"><a href="{{URL::to('/chi-tiet/'.$pro->product_id)}}">Chi tiết </a></button>
                                <button class="btn-flat btn-hover btn-cart-add">
                                    <i class='bx bxs-cart-add'></i>
                                </button>
                                <button class="btn-flat btn-hover btn-cart-add">
                                    <i class='bx bxs-heart'></i>
                                </button>
                            </div>
                          
                            <div class="product-card-name">
                            {{$pro ->product_name}}
                            </div>
                            <div class="product-card-price">
                                <span><del>$300</del></span>
                                <span class="curr-price">{{ number_format($pro->product_price,0,',','.') }}vnd </span>
                            </div>
                          
                        </div>
                       
                    </div>
                    @endforeach
                    
                    
                    </div>
                </div>
            </div>
            <div class="section-footer">
                <a href="{{URL('/product')}}" class=" btn-hover">Xem thêm</a>
            </div>
        </div>
</div>
    <!-- end product list -->

        <!-- Pricing Start -->
        <div class="price">
            <div class="container">
                <div class="section-header text-center">
                    <p></p>
                    <h2>Sim điện thoại</h2>
                </div>
            
                <div class="row">
                    <div class="sim-list">
                    @foreach($all_sim as $key =>$sim )
                        <div class="price-item">
                            <div class="price-img">
                                <img src="public/frontend/img/sim.png" alt="Image">
                            </div>
                            <div class="price-text">
                                <h2> {{$sim ->sim_number}}</h2>
                                <h3>{{number_format($sim->sim_price,0,',','.') }} vnd</h3>
                            </div>
                        </div>
                        @endforeach
                    </div>
                   
                </div>
            </div>
            <div class="section-footer">
                <a href="{{URL('/all-sim')}}" class=" btn-hover">Xem thêm</a>
            </div>
        </div>
        <!-- Pricing End -->
        
        
        <!-- Testimonial Start -->
        <div class="testimonial">
            <div class="container">
                <div class="owl-carousel testimonials-carousel">
                    <div class="testimonial-item">
                        <img src="img/testimonial-1.jpg" alt="Image">
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ut mollis mauris. Vivamus egestas eleifend dui ac consequat. Fusce venenatis at lectus in malesuada. Suspendisse sit amet dolor et odio varius mattis.
                        </p>
                        <h2>Client Name</h2>
                        <h3>Profession</h3>
                    </div>
                    <div class="testimonial-item">
                        <img src="img/testimonial-2.jpg" alt="Image">
                        <p>
                            Phasellus pellentesque tempus pretium. Quisque in enim sit amet purus venenatis porttitor sed non velit. Vivamus vehicula finibus tortor. Aliquam vehicula molestie pulvinar. Sed varius libero in leo finibus, ac consectetur tortor rutrum.
                        </p>
                        <h2>Client Name</h2>
                        <h3>Profession</h3>
                    </div>
                    <div class="testimonial-item">
                        <img src="img/testimonial-3.jpg" alt="Image">
                        <p>
                            Sed in lectus eu eros tincidunt cursus. Aliquam eleifend velit nisl. Sed et posuere urna, ut vestibulum massa. Integer quis magna non enim luctus interdum. Phasellus sed eleifend erat. Aliquam ligula ex, semper vel tempor pellentesque, pretium eu nulla.
                        </p>
                        <h2>Client Name</h2>
                        <h3>Profession</h3>
                    </div>
                </div>
            </div>
        </div>
        <!-- Testimonial End -->


        <!-- Team Start -->
        <div class="team">
            <div class="container">
                <div class="section-header text-center">
                    <p>Our Barber Team</p>
                    <h2>Meet Our Hair Cut Expert Barber</h2>
                </div>
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="team-item">
                            <div class="team-img">
                                <img src="img/team-1.jpg" alt="Team Image">
                            </div>
                            <div class="team-text">
                                <h2>Adam Phillips</h2>
                                <p>Master Barber</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="team-item">
                            <div class="team-img">
                                <img src="img/team-2.jpg" alt="Team Image">
                            </div>
                            <div class="team-text">
                                <h2>Dylan Adams</h2>
                                <p>Hair Expert</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="team-item">
                            <div class="team-img">
                                <img src="img/team-3.jpg" alt="Team Image">
                            </div>
                            <div class="team-text">
                                <h2>Gloria Edwards</h2>
                                <p>Beard Expert</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="team-item">
                            <div class="team-img">
                                <img src="img/team-4.jpg" alt="Team Image">
                            </div>
                            <div class="team-text">
                                <h2>Josh Dunn</h2>
                                <p>Color Expert</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Team End -->
        
        
        <!-- Contact Start -->
        <div class="contact">
            <div class="container-fluid">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-md-4"></div>
                        <div class="col-md-8">
                            <div class="contact-form">
                                <div id="success"></div>
                                <form name="sentMessage" id="contactForm" novalidate="novalidate">
                                    <div class="control-group">
                                        <input type="text" class="form-control" id="name" placeholder="Your Name" required="required" data-validation-required-message="Please enter your name" />
                                        <p class="help-block text-danger"></p>
                                    </div>
                                    <div class="control-group">
                                        <input type="email" class="form-control" id="email" placeholder="Your Email" required="required" data-validation-required-message="Please enter your email" />
                                        <p class="help-block text-danger"></p>
                                    </div>
                                    <div class="control-group">
                                        <input type="text" class="form-control" id="subject" placeholder="Subject" required="required" data-validation-required-message="Please enter a subject" />
                                        <p class="help-block text-danger"></p>
                                    </div>
                                    <div class="control-group">
                                        <textarea class="form-control" id="message" placeholder="Message" required="required" data-validation-required-message="Please enter your message"></textarea>
                                        <p class="help-block text-danger"></p>
                                    </div>
                                    <div>
                                        <button class="btn" type="submit" id="sendMessageButton">Send Message</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Contact End -->


        <!-- Blog Start -->
        <div class="blog">
            <div class="container">
                <div class="section-header text-center">
                    <p>Latest From Blog</p>
                    <h2>Learn More from Latest Barber Blog</h2>
                </div>
                <div class="owl-carousel blog-carousel">
                    <div class="blog-item">
                        <div class="blog-img">
                            <img src="img/blog-1.jpg" alt="Blog">
                        </div>
                        <div class="blog-meta">
                            <i class="fa fa-list-alt"></i>
                            <a href="">Hair Cut</a>
                            <i class="fa fa-calendar-alt"></i>
                            <p>01-Jan-2045</p>
                        </div>
                        <div class="blog-text">
                            <h2>Lorem ipsum dolor</h2>
                            <p>
                                Lorem ipsum dolor sit amet elit. Neca pretim miura bitur facili ornare velit non vulpte liqum metus tortor
                            </p>
                            <a class="btn" href="">Read More <i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                    <div class="blog-item">
                        <div class="blog-img">
                            <img src="img/blog-2.jpg" alt="Blog">
                        </div>
                        <div class="blog-meta">
                            <i class="fa fa-list-alt"></i>
                            <a href="">Beard Style</a>
                            <i class="fa fa-calendar-alt"></i>
                            <p>01-Jan-2045</p>
                        </div>
                        <div class="blog-text">
                            <h2>Lorem ipsum dolor</h2>
                            <p>
                                Lorem ipsum dolor sit amet elit. Neca pretim miura bitur facili ornare velit non vulpte liqum metus tortor
                            </p>
                            <a class="btn" href="">Read More <i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                    <div class="blog-item">
                        <div class="blog-img">
                            <img src="img/blog-3.jpg" alt="Blog">
                        </div>
                        <div class="blog-meta">
                            <i class="fa fa-list-alt"></i>
                            <a href="">Color & Wash</a>
                            <i class="fa fa-calendar-alt"></i>
                            <p>01-Jan-2045</p>
                        </div>
                        <div class="blog-text">
                            <h2>Lorem ipsum dolor</h2>
                            <p>
                                Lorem ipsum dolor sit amet elit. Neca pretim miura bitur facili ornare velit non vulpte liqum metus tortor
                            </p>
                            <a class="btn" href="">Read More <i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                    <div class="blog-item">
                        <div class="blog-img">
                            <img src="img/blog-4.jpg" alt="Blog">
                        </div>
                        <div class="blog-meta">
                            <i class="fa fa-list-alt"></i>
                            <a href="">Hair Cut</a>
                            <i class="fa fa-calendar-alt"></i>
                            <p>01-Jan-2045</p>
                        </div>
                        <div class="blog-text">
                            <h2>Lorem ipsum dolor</h2>
                            <p>
                                Lorem ipsum dolor sit amet elit. Neca pretim miura bitur facili ornare velit non vulpte liqum metus tortor
                            </p>
                            <a class="btn" href="">Read More <i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                    <div class="blog-item">
                        <div class="blog-img">
                            <img src="img/blog-5.jpg" alt="Blog">
                        </div>
                        <div class="blog-meta">
                            <i class="fa fa-list-alt"></i>
                            <a href="">Beard Style</a>
                            <i class="fa fa-calendar-alt"></i>
                            <p>01-Jan-2045</p>
                        </div>
                        <div class="blog-text">
                            <h2>Lorem ipsum dolor</h2>
                            <p>
                                Lorem ipsum dolor sit amet elit. Neca pretim miura bitur facili ornare velit non vulpte liqum metus tortor
                            </p>
                            <a class="btn" href="">Read More <i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                    <div class="blog-item">
                        <div class="blog-img">
                            <img src="img/blog-6.jpg" alt="Blog">
                        </div>
                        <div class="blog-meta">
                            <i class="fa fa-list-alt"></i>
                            <a href="">Color & Wash</a>
                            <i class="fa fa-calendar-alt"></i>
                            <p>01-Jan-2045</p>
                        </div>
                        <div class="blog-text">
                            <h2>Lorem ipsum dolor</h2>
                            <p>
                                Lorem ipsum dolor sit amet elit. Neca pretim miura bitur facili ornare velit non vulpte liqum metus tortor
                            </p>
                            <a class="btn" href="">Read More <i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Blog End -->


@endsection