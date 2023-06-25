create database WEB_D_project;
use WEB_D_project;
create table t(//checking purpose table 
    variable int
);
truncate TABLE t;
insert into t values(1);
desc login;
create table login(
    username varchar(20),
    email varchar(40),
    password varchar(20)
);
insert into login(username, email, password) values('sagar','sagar.cs21@bmsce.ac.in','sagar123');
select * from t;
select * from login;
SELECT * FROM login where username = "sagar";
create table products(
    products_id varchar(25) primary key,
    product_type varchar(25),
    imgurl1 varchar(500),
    imgurl2 varchar(500),
    imgurl3 varchar(500),
    imgurl4 varchar(500),
    price real,
    title varchar(500),
    feature1 varchar(400),
    feature2 varchar(400),
    feature3 varchar(400),
    feature4 varchar(400)
);
drop table cart;
select distinct * from cart;
truncate cart;
create table cart(
    username varchar(20),
    email varchar(40),
    product_id varchar(10),
    foreign key (product_id) references products(products_id)
);
select products_id from products where products_id like "one%";
update products set imgurl1="https://m.media-amazon.com/images/I/41HKq7xofDL.jpg" where products_id='gtneo2';
SELECT * FROM login where username =1 or 1 and email =2 or 2;
desc products;
select * from products where product_type = "pc";
insert into products values("acerasp","laptop" ,"https://d2d22nphq0yz8t.cloudfront.net/88e6cc4b-eaa1-4053-af65-563d88ba8b26/https://media.croma.com/image/upload/v1666096848/Croma%20Assets/Computers%20Peripherals/Laptop/Images/263843_lyw43f.png/mxw_2256,f_auto","https://d2d22nphq0yz8t.cloudfront.net/88e6cc4b-eaa1-4053-af65-563d88ba8b26/https://media.croma.com/image/upload/v1668663643/Croma%20Assets/Computers%20Peripherals/Laptop/Images/262842_2_s8fnov.png/mxw_2256,f_auto","https://d2d22nphq0yz8t.cloudfront.net/88e6cc4b-eaa1-4053-af65-563d88ba8b26/https://media.croma.com/image/upload/v1668663647/Croma%20Assets/Computers%20Peripherals/Laptop/Images/262842_3_sadei3.png/mxw_2256,f_auto","https://d2d22nphq0yz8t.cloudfront.net/88e6cc4b-eaa1-4053-af65-563d88ba8b26/https://media.croma.com/image/upload/v1668663640/Croma%20Assets/Computers%20Peripherals/Laptop/Images/262842_1_rpu5fd.png/mxw_2256,f_auto",20000.00,"Acer Aspire 3 Intel Core i3 11th Gen (15.6 inch, 8GB, 512GB, Windows 11 Home, MS Office 2021, Intel UHD, Full HD LED-Backlit Display, Silver, NX.ADDSI.011) ","Display: 39.62 cms (15.6 inches), FHD LED-Backlit","Memory: 8GB DDR4, 512GB SSD ROM","Processor: Intel Core i3 11th Generation","Graphics: Intel UHD\nIncluded Software: MS Office 2021");
insert into products values("macair","laptop","https://d2d22nphq0yz8t.cloudfront.net/88e6cc4b-eaa1-4053-af65-563d88ba8b26/https://media.croma.com/image/upload/v1657282804/Croma%20Assets/Computers%20Peripherals/Laptop/Images/256601_oocztd.png/mxw_2256,f_auto","https://d2d22nphq0yz8t.cloudfront.net/88e6cc4b-eaa1-4053-af65-563d88ba8b26/https://media.croma.com/image/upload/v1657282791/Croma%20Assets/Computers%20Peripherals/Laptop/Images/256601_2_ptkunz.png/mxw_2256,f_auto","https://d2d22nphq0yz8t.cloudfront.net/88e6cc4b-eaa1-4053-af65-563d88ba8b26/https://media.croma.com/image/upload/v1657282795/Croma%20Assets/Computers%20Peripherals/Laptop/Images/256601_3_mjbvva.png/mxw_2256,f_auto","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQr8uEoFpk7jEze-ds02AG8Nko-2IBj0ERl8ijP0QHPhw&s",50000.00,"Apple MacBook Air 2022 (M2, 13.6 inch, 8GB, 256GB, macOS, Starlight)","Processor: Apple M2","Display: 34.46 cm (13.6 inches) LED-Backlit","Memory: 8GB Unified Memory RAM, 256GB SSD ROM","Warranty: 1 Year Carry-In");
insert into products values ("lenova-thinkbook","laptop","https://m.media-amazon.com/images/I/51CgbCTiwlL._SX679_.jpg","https://m.media-amazon.com/images/I/61X4khB2mML._SX679_.jpg","https://m.media-amazon.com/images/I/51qqjMQJYXL._SX679_.jpg","https://m.media-amazon.com/images/I/51iyLssu-HL._SX679_.jpg",19000.00,"Lenovo ThinkBook 14 Intel Core i5 11th Gen 14(35.56cm) FHD IPS Laptop(8GB RAM/ 512GB SSD / Windows 11 Home / MS Office 2021 / Mineral Grey / 1.4 kg), 20VDA0THIH","Processor: 11th Gen Intel Core i5-1135G7, 2.4 Ghz base clock, 4.2 Ghz max boost clock, 4 Cores, 8 MB Cache | Memory: 8GB Soldered RAM DDR4-3200 MHz upgradable upto 40 GB | Storage: 512GB SSD M.2","Operating System: Preloaded Windows 11 Home with Lifetime Validity | Pre-installed software: Microsoft Office Home & Student 2021","Display: 14-inch (35.56 cm) screen with (1920X1080) Full HD IPS 250 nits Antiglare display | Graphics: Integrated Intel UHD Graphics comes with DirectX 12 enables amazing graphics | Monitor Support: Supports up to 4 independent displays","Camera: 720p, with ThinkShutter | Microphone: Dual array microphone with AI-based noise cancellation, switchable audio modes| Keyboard: 6-row, spill-resistant, Backlit | Touchpad: Buttonless Mylar surface multi-touch touchpad, supports Precision TouchPad");
insert into products values("hp_pavilion","laptop","https://m.media-amazon.com/images/I/51DmOWr3rnL._SX679_.jpg","https://m.media-amazon.com/images/I/51yK58ms0IL._SX679_.jpg","https://m.media-amazon.com/images/I/61JkbUTck8L._SX679_.jpg","https://m.media-amazon.com/images/I/61yzypPAPxL._SX679_.jpg",80000.00,"HP Pavilion AMD Ryzen 7 5800H 15.6 inches(39.6cm) FHD Gaming Laptop (16GB/512GB SSD/Windows 11 Home/NVIDIA RTX 3050 Graphics/MS Office/ Shadow Black & Ultra Violet/1.98 Kg), 15-ec2146AX","Processor:AMD Ryzen 7 5800H (up to 4.4 GHz max boost clock(2i), 16 MB L3 cache,8 cores, 16 threads) (2.1 GHz base clock speed, up to 3.7 GHz max boost clock, 4 MB L3 cache, 4 cores)","Memory: 16 GB DDR4-3200 (2 x 8 GB), Up to 16 GB DDR4-3200 SDRAM | Storage: 512 GB PCIe NVMe M.2 SSD","Display: 15.6-Inch (39.6 cm) FHD, anti-glare, micro-edge, 144 Hz, 300 nits, 72% NTSC (1920 x 1080) Operating System & Software: Windows 11 Home 64 Plus Single Language | Pre - installed Microsoft Office Home & Student 2019","Graphics & Networking: NVIDIA GeForce RTX 3050 (4 GB GDDR6 dedicated) | Realtek Wi-Fi 6 (2x2) and Bluetooth 5.2 combo, MU-MIMO supported"
);
insert into products values("honor","laptop","https://m.media-amazon.com/images/I/71guAvSMbSL._SX679_.jpg",
"https://m.media-amazon.com/images/I/71bjZNBofsL._SX679_.jpg",
"https://m.media-amazon.com/images/I/71KRMsFVCmL._SX679_.jpg",
"https://m.media-amazon.com/images/I/81tkpxBTz5L._SX679_.jpg",45000.00,"Honor MagicBook 14, AMD Ryzen 5 5500U 14-inch (35.56 cm) FHD IPS Anti-Glare Thin and Light Laptop (16GB/512GB PCIe SSD/Windows 11/Fingerprint Login/Metal Body/Backlit KB/1.38Kg), Gray, NobelM-WFQ9AHNE","【 Stylish Appearance】 Honor Magicbook 14 has a Premium Aluminium Metal Body with 15.9MM Thickness, 4.8 MM Narrow Bezels, and the weight of the laptop is only 1.38kg, which allows you to carry it easily, making it very convenient for travel and work",
"Eye Comfort Mode】 It has 14” FHD Full View IPS Anti-Glare Screen. And has the Support of TÜV Rheinland Low Blue Light Certification, and Flicker Free Certification. It Protects your eyes at all times, and your eyes will no longer be fatigued when working",
"【 65W Type-C Fast Charging 】HONOR MagicBook 14 has a large battery capacity of 56 Wh, which can power local video watching for about 11 hours. The 65W portable charger can supplement about 65% battery capacity for HONOR MagicBook 14 in 1 hour",
"【Fast Speed Laptop】Ryzen 5 5500U Processor, 2.1 GHz base speed, 4.0 GHz Max Speed, 6 Cores, 12 Threads | AMD Radeon Graphics. 16GB DDR4 RAM & 512GB PCIe SSD, making it perfect for your office and study needs.");
insert into products values("dellxps","laptop","https://m.media-amazon.com/images/I/61uY1B3pTcL._SX679_.jpg",
"https://m.media-amazon.com/images/I/611SezIStrL._SX679_.jpg",
"https://m.media-amazon.com/images/I/71NHNKn8kPL._SX679_.jpg",
"https://m.media-amazon.com/images/I/61iKjCKvRuL._SX679_.jpg",100000.00,"Dell XPS 9700 43.18cm 17-inches FHD Display Intel Laptop (10th Gen i7-10750H / 16 GB / 1TB SSD / 4 GB GTX Graphics/ Win 10 + MS Office / Silver) D560027WIN9S","Processor:10th Generation Intel Core i7-10750H (12MB Cache, up to 5.0 GHz, 6 cores)",
"Memory & Storage:16GB DDR4 at 2933MHz,dual channel | 256GB M.2 PCIe NVMe Solid State Drive (Boot) + 1TB 5400 rpm 2.5 SATA Hard Drive",
"Graphics:NVIDIA GeForce GTX 1650 4GB GDDR6",
"Display:17'' FHD(1920 x 1200) InfinityEdge display ,500-nits |100% sRGB | 93.7% Screen to body ratio | Eyesafe technology");

insert into products values("1+8t","phone","https://fdn2.gsmarena.com/vv/pics/oneplus/oneplus-8t-1.jpg","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPJ6ZYTWaAtXQSZ9UyIu7Are3aADVAWD9Y0jPHBjXPJQ&s","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPt6q-SwVLFeuhK0YktxF88P987DfiYPYqnoxWqLfBXA&usqp=CAU&ec=48665699","https://telecomtalk.info/wp-content/uploads/2020/11/oneplus-8t-review-6.jpg",45000.00,"OnePlus 8T 5G (Aquamarine Green, 8GB RAM, 128GB Storage)","8 GB RAM | 128 GB ROM","16.64 cm (6.55 inch) Display","48MP Rear Camera","4500 mAh Battery");
insert into products values("gtneo2","phone","https://encrypted-tbn0.gstatic.com/images?g=tbn:ANd9GcTZWTBfJ4usqMRDuFUD8CkkPxUNFYX0gk-PBhE9igyDsYWRjq-I6nTdobMulr0llfU3sbGow-cyztw&usqp=CAU&ec=48665699","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLqB9cI6NEFnIKa8aSVnA1ifG4cn79xFf77X0z0H_WtrkbiaNJMdlshvKSZXltIaYEx7tuQS4XatM&usqp=CAU&ec=48665699","https://www.91-cdn.com/hub/wp-content/uploads/2021/10/Realme-GT-Neo-2-1.jpg","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsK6Ki8mGrYw1GFkCPQgg3H6xkYMdADxm_hHFzHSaifg&usqp=CAU&ec=48665699",32000.00,"Realme GT Neo 2 128 GB (Neo Blue, 8 GB RAM)","Android 11.0",
    "RAM 8 GB", "Fingerprint Scanner, Rear Camera, Front Camera, USB, Face Unlock Fast Charging",
"AMOLED");
insert into products values("iphone13","phone","https://d2d22nphq0yz8t.cloudfront.net/88e6cc4b-eaa1-4053-af65-563d88ba8b26/https://media.croma.com/image/upload/v1664009482/Croma%20Assets/Communication/Mobiles/Images/243461_0_tzq0y4.png/mxw_2256,f_auto",
"https://d2d22nphq0yz8t.cloudfront.net/88e6cc4b-eaa1-4053-af65-563d88ba8b26/https://media.croma.com/image/upload/v1664009485/Croma%20Assets/Communication/Mobiles/Images/243461_2_a2tgwg.jpg/mxw_2256,f_auto",
"https://d2d22nphq0yz8t.cloudfront.net/88e6cc4b-eaa1-4053-af65-563d88ba8b26/https://media.croma.com/image/upload/v1664009485/Croma%20Assets/Communication/Mobiles/Images/243461_7_hj9r2d.png/mxw_2256,f_auto",
"https://d2d22nphq0yz8t.cloudfront.net/88e6cc4b-eaa1-4053-af65-563d88ba8b26/https://media.croma.com/image/upload/v1664009478/Croma%20Assets/Communication/Mobiles/Images/243461_10_mev8cp.png/mxw_2256,f_auto",2000.00,"Apple iPhone 13 (128GB, Pink)",
"Display: 6.1 inches (15.4 cm), Super Retina XDR OLED",
"Memory: 128GB ROM",
"Processor: Apple A15 Bionic, Hexa Core",
"Camera: 12 MP + 12 MP Dual Rear & 12 MP Front Camera");
insert into products values("ntg1","phone",
"https://m.media-amazon.com/images/I/31WwEhEX2UL.jpg",
"https://m.media-amazon.com/images/I/31bJnKq6sjL._SX38_SY50_CR,0,0,38,50_.jpg",
"https://m.media-amazon.com/images/I/31at--KAuTL._SX38_SY50_CR,0,0,38,50_.jpg",
"https://m.media-amazon.com/images/I/21LnkTg1exL._SX38_SY50_CR,0,0,38,50_.jpg",15000.00,"Nothing Phone (1) 5G (Black, 128 GB) (8 GB RAM)",
"8 GB RAM | 128 GB ROM",
"16.64 cm (6.55 inch) Full HD+ Display",
"50MP + 50MP | 16MP Front Camera",
"Qualcomm Snapdragon 778G+ Processor");
insert into products values("1+10r","phone",
"https://m.media-amazon.com/images/I/71BoiXkrEmL._SX679_.jpg","https://images.news18.com/ibnlive/uploads/2022/05/oneplus10r_main.jpg","https://m.media-amazon.com/images/I/61mZvk2WHAL._SX679_.jpg","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTGudKzdd1ZuEN0vWRV9BHgFubExPSRgVrGt_JPQvx8LYZnkCEOiwC6fafP9GLLXw7S2fu538t3cc&usqp=CAU&ec=48665699",45000,"OnePlus 10R 5G (Sierra Black, 8GB RAM, 128GB Storage, 80W SuperVOOC)","Camera: 50MP Main Camera with Sony IMX766 and 2MP Macro Camera with Dual LED Flash; 16MP Front (Selfie) Camera with Sony IMX471",
"Camera Features: Nightscape2.0, Super Macro, UltraShot HDR, Smart Scene Recognition, Portrait mode, Pro mode, Panorama, Tilt-shift mode, Focus Peaking, Filters, Video Nightscape, Video HDR, Video Portrait Timelapse, Hyperlapse Mode",
"Display: 6.7 Inches; 120 Hz IRIS Display; Resolution: 2400 X 1080 pixels 394 ppi; Aspect Ratio: 20:9",
"Display Features: Hyper Touch Mode, Reading Mode, Night Mode, Eye Comfort Mode, Auto brightness");
insert into products values("iqoo-se","phone",
"https://m.media-amazon.com/images/I/618gFHEnXUL._SX679_.jpg",
"https://m.media-amazon.com/images/I/61L8YeX1wKL._SX679_.jpg",
"https://m.media-amazon.com/images/I/71GURCoHL4L._SX679_.jpg",
"https://m.media-amazon.com/images/I/31rihUoHU+L._SX38_SY50_CR,0,0,38,50_.jpg",30000.00,"iQOO 9 SE 5G (Space Fusion, 8GB RAM, 128GB Storage) | Qualcomm Snapdragon 888 | 66W Flash Charge",
"Qualcomm Snapdragon 888 5G Mobile Platform is based on a new 5 nm process and a Kryo680 architecture, Compared with Snapdragon 870, the CPU performance improves by 25%, GPU performance by 35%. Along with Enhanced LPDDR 5 & Enhanced UFS 3.1 (V6).",
"4500mAh battery with a 66W flash charger comes as standard, supporting FlashCharge technology. It charges 50% battery in just 14 minutes and 100% battery in just 39 minutes",
"Intelligent Display Chip is able to increase the frame rate and optimize colors so that every player can enjoy high FPS and rich colors at hand to be fully immersed in the gaming experience.",
"48MP OIS Triple Rear Camera, gives super clear pictures which retain the same clarity when they are enlarged. OIS ensures good performance while taking photos at night or capturing movements. 13MP wide-angle camera supports 120° ultrawide shots (108° after distortion correction) and macro shots with the minimum focal length of 2.5 cm.");
insert into products values("oppo-reno","phone","https://img.poorvika.com/cdn-cgi/image/width=1600,height=1600,quality=75/1600_JPG/Mobiles/oppo/Oppo-Reno-8-Pro/Oppo-Reno-8-Pro-Glazed-Green-03.jpg","https://static.toiimg.com/thumb/msid-92691007,width-1280,height-720,resizemode-4/.jpg","https://images.news18.com/ibnlive/uploads/2022/07/oppo-reno-8-india-launch.jpg","https://images.hindustantimes.com/tech/img/2022/07/18/960x540/FX82v1HUsAEWyoa_1658152659381_1658152684797_1658152684797.jpeg",
18000.00,"OPPO Reno7 Pro 5G 8GB RAM 256GB Storage","12 GB RAM | 256 GB ROM","16.51 cm (6.5 inch) Full HD+ AMOLED Display","50MP + 8MP + 2MP | 32MP Front Camera", "4500 mAh Lithium-ion Polymer Battery");
insert into products values("ssd500","pc","https://m.media-amazon.com/images/I/51FAWVStZiL._SX679_.jpg","https://m.media-amazon.com/images/I/41dDj92crnL.jpg","https://snsinfotech.in/wp-content/uploads/2021/05/SSD-500GB-WD-BLUE-SATA.jpg","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsmCO3rSH-aED20m5e26nlxj_cj9K5LZBdqP4_5kdTfZMkVc2kd7RhFj_qRRbHUSFKePQwG16M6y0&usqp=CAU&ec=48665699",2500,"Crucial BX500 500GB 2.5-inch SATA 3D NAND Internal SSD Upto 550 MB/s",
    "Digital Storage Capacity	500 GB",
     "Digital Storage Capacity	500 GBConnector Type	SATA",
     "Brand	Crucial",
     "Hard Disk Form Factor	2.5 Inches");
insert into products values("ryzen5","pc",
"https://m.media-amazon.com/images/I/41zJyZ5o8aL._SS40_.jpg",
"https://m.media-amazon.com/images/I/41MlpsOgclL._SS40_.jpg","https://images.fonearena.com/blog/wp-content/uploads/2023/01/AMD-Ryzen-5-7600-Fonearena-14.jpg",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkFlvKyw-MjE81se5e6XCnVg95CB3dKFNG_7rM-ZfVWKtqklMCdwj0IzVMahjsjHNw8L38XKy-qMA&usqp=CAU&ec=48665699",29000.00 ,"AMD Ryzen™ 5 5600G Desktop Processor (6-core/12-thread, 19MB Cache, up to 4.4 GHz max Boost) with Radeon™ Graphics",
 "6 Cores & 12 Threads, 19 MB Cache. Turbo Boost :Yes",
 "Base Clock: 3.9 GHz, Max Boost Clock: up to 4.4 GHz. Virtualization Support: Yes",
 "Memory Support: DDR4 3200 MHz, Memory Channels: 2, TDP: 65W",
 "Compatible with Motherboards based on 500 series chipset, Socket AM4");
 insert into products values("ddr4","pc",
"https://m.media-amazon.com/images/I/51LS6VC9i+L._SX679_.jpg",
"https://m.media-amazon.com/images/I/31IFZIYEDbL._SS40_.jpg",
"https://m.media-amazon.com/images/I/41Du5DAR4ML._SS40_.jpg",
"https://m.media-amazon.com/images/I/41Du5DAR4ML._SS40_.jpg",
    1500,
 "Corsair Vengeance LPX 8GB DDR4 3000 (PC4-24000) C16 PC Memory (CMK8GX4M1D3000C16)",
    "Each vengeance LPX module is built with a pure aluminium heat spreader for faster heat dissipation and cooler operation",
    "Available in multiple colours to match your motherboard, your components, or just your style",
    "Vengeance LPX is optimized and compatibility tested for the latest Intel Z370 series motherboards and offers higher frequencies, greater bandwidth, and lower power consumptio",
     "The Vengeance LPX module height is carefully designed to fit smaller spacesXMP 2.0 enabled for superior overclocking");
insert into products values ("hdd10tb","pc",
    "https://m.media-amazon.com/images/I/71VzCKKi6zL._SX679_.jpg",
    "https://m.media-amazon.com/images/I/41is5wwU8uL._SS40_.jpg",
     "https://m.media-amazon.com/images/I/41Xnxt462TL._SS40_.jpg",
    "https://m.media-amazon.com/images/I/4102PsbybyL._SS40_.jpg",
46000,
     "TOSHIBA N300 Internal 10TB NAS HDD 7200 RPM Hard Drive",
 "Toshiba, Toshiba India Pvt. Ltd. | Address: 601, C & B Square Plaza, Andheri - east, Mumbai - 400059 | Contact: 022-6191500",
 "Toshiba N300 NAS Internal HDD",
 "Steel",
 "Perfect for Personal, Home Office and Small Business use.");
 insert into products values ("cooler","pc",
"https://m.media-amazon.com/images/I/51n69E5rMZL._SX522_.jpg",
"https://m.media-amazon.com/images/I/31D6mAlTENL._SX38_SY50_CR,0,0,38,50_.jpg",
"https://m.media-amazon.com/images/I/41wYM3Ao6UL._SX38_SY50_CR,0,0,38,50_.jpg",
 "https://m.media-amazon.com/images/I/41jEV8ie-hL._SX38_SY50_CR,0,0,38,50_.jpg",
 400,
 "PCCOOLER Halo Fixed Color Fan with 1400 RPM, 120mm 4-Pin PWM RGB Fan",
"The 120mm PWM controlled fans comes with Hydraulic Bearing and a dynamic speed adjustment of 1400RPM.",
"The 9-Fan blades provide balanced fan operation and large airflow of 45.18CFM. The 8-silicone anti-vibration pads assist in silent operation and extreme longer life for your Halo fans.",
 "With the 5V 4Pin RGB Mini controller, it can easily adapt to different motherboards and supports multi-mode adjustments including mode, speed and color giving absolute control and a touch of your personalization.",
 "The Halo is designed to support Gigabyte, MSI and ASUS Motherboards. Match with PCCOOLER Air coolers and AIO Liquid coolers to build up your gaming chassis.");
 insert into products values("MI_tv","tv",
 "https://m.media-amazon.com/images/I/81rwiwQ1itL._SX679_.jpg",
 "https://m.media-amazon.com/images/I/41w0Z7qbwnL._SS40_.jpg",
 "https://m.media-amazon.com/images/I/51EwvhOZ+NL._SS40_.jpg",
 "https://m.media-amazon.com/images/I/41MIn9noocL._SS40_.jpg",24999,
 "MI 100 cm (40 inches) 5A Series Full HD Smart Android LED TV L40M7-EAIN (Black)",
"The brands, Mi and Xiaomi, are part of the same multinational conglomerateResolution: Full HD(1920 x 1080) Resolution | Refresh Rate : 60 Hertz | 178 Degree wide viewing angle",
 "Connectivity: Dual Band Wi-Fi | 2 HDMI ports to connect latest gaming consoles, set top box, Blu-ray Players | 2 USB ports to connect hard drives and other USB devices | ALLM | ARC | Bluetooth 5.0 | Ethernet",
"Sound: 24 Watts Output | Dolby Audio, DTS:X, DTS Virtual: X",
 "Smart TV Features : Android TV 11 | PatchWall | IMDb Integration | Universal Search | 300+ Free Live Channels | Kids Mode with Parental lock | Smart Recommendations | Language Universe |15+ Languages | User Centre | Okay Google | Chromecast");
 insert into products values("foxskytv","tv",
 "https://d2d22nphq0yz8t.cloudfront.net/88e6cc4b-eaa1-4053-af65-563d88ba8b26/https://media.croma.com/image/upload/v1664429773/Croma%20Assets/Entertainment/Television/Images/258796_0_aul83w.png/mxw_2256,f_auto",
"https://d2d22nphq0yz8t.cloudfront.net/88e6cc4b-eaa1-4053-af65-563d88ba8b26/https://media.croma.com/image/upload/v1664429770/Croma%20Assets/Entertainment/Television/Images/258796_1_hvcbum.png/mxw_2256,f_auto",
"https://d2d22nphq0yz8t.cloudfront.net/88e6cc4b-eaa1-4053-af65-563d88ba8b26/https://media.croma.com/image/upload/v1664429779/Croma%20Assets/Entertainment/Television/Images/258796_2_bjkm7o.png/mxw_2256,f_auto",
"https://d2d22nphq0yz8t.cloudfront.net/88e6cc4b-eaa1-4053-af65-563d88ba8b26/https://media.croma.com/image/upload/v1664429781/Croma%20Assets/Entertainment/Television/Images/258796_5_hytfnq.png/mxw_2256,f_auto",
19999,
"Foxsky 127 cm (50 inch) 4K Ultra HD LED Android TV with Google Assistant (2021 model)",
"Display: LED Ultra HD 4K, 3840 x 2160 pixels, 60 Hz Refresh Rate",
"Connectivity: 2 HDMI | 2 USB | Wi-Fi",
"Operating System: Android",
"Apps: Netflix, Prime Video, Zee5, Eros Now, JioCinema, SonyLiv");
insert into products values("1+tv","tv",
"https://m.media-amazon.com/images/I/51ovMTXv9RL._SS40_.jpg",
"https://m.media-amazon.com/images/I/51u1EqzpfbL._SS40_.jpg",
"https://m.media-amazon.com/images/I/51SMXRtyd6L._SS40_.jpg",
"https://m.media-amazon.com/images/I/316Ha5itCCL._SS40_.jpg",
29999,
"OnePlus 108 cm (43 inches) Y Series 4K Ultra HD Smart Android LED TV 43Y1S Pro (Black)",
 "Resolution : 4K Ultra HD (3840x2160) | Refresh Rate : 60 Hertz",
"Connectivity: 3 HDMI ports to connect set top box, Blu Ray players, gaming console | 2 USB ports to connect hard drives and other USB devices | Dual-band Wi-Fi",
"Sound : 24 Watts Output | Dolby Audio | Dolby Atmos Decoding",
"Display : Bezel-less Design | Decoding of HDR10+ HDR10, HLG | 1 billion colors | Gamma Engine with MEMC");
insert into products values ("sonytv","tv",
"https://m.media-amazon.com/images/I/91v4nFq0LuL._SX679_.jpg",
"https://m.media-amazon.com/images/I/41jlfxvIYyL._SS40_.jpg",
"https://m.media-amazon.com/images/I/41GnLZhaoML._SS40_.jpg",
"https://m.media-amazon.com/images/I/51Noay1lbgL._SS40_.jpg",
45999,
"Sony Bravia 108 cm (43 inches) Full HD Smart LED TV 43W6600 (Black) (2020 Model)",
 "Smart TV Features: Smart TV | Screen Mirroring | Netflix | HDR Gaming",
"Easy returns: This product is eligible for replacement within 10 days of delivery in case of any product defects, damage or features not matching the description provided Sound output: 20 Watts Output | Open Baffle Speaker | ClearAudio+ technology | TV",
"Display: HDR | X-Reality Pro | Motionflow XR 200",
"Warranty Information: 1 year warranty provided by the manufacture from the date of purchase");