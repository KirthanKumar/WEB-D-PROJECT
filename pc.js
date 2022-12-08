function js4Function(value) {
    const pc = [
        {
            "img": "https://m.media-amazon.com/images/I/61E7DbDiZ8L._AC_UY218_.jpg",
            "description": "Crucial BX500 500GB 2.5-inch SATA 3D NAND Internal SSD Upto 550 MB/s",
            "price": 2500
        },
        {
            "img": "https://m.media-amazon.com/images/I/51zUfd6acTL._AC_UY218_.jpg",
            "description": "AMD Ryzen™ 5 5600G Desktop Processor (6-core/12-thread, 19MB Cache, up to 4.4 GHz max Boost) with Radeon™ Graphics",
            "price": 9000
        },
        {
            "img": "https://m.media-amazon.com/images/I/51NseOnkWRL._AC_UY218_.jpg",
            "description": "Corsair Vengeance LPX 8GB DDR4 3000 (PC4-24000) C16 PC Memory (CMK8GX4M1D3000C16)",
            "price": 1500
        },
        {
            "img": "https://m.media-amazon.com/images/I/71VzCKKi6zL._AC_UY218_.jpg",
            "description": "TOSHIBA N300 Internal 10TB NAS HDD 7200 RPM Hard Drive",
            "price": 15000
        },
        {
            "img": "https://m.media-amazon.com/images/I/51n69E5rMZL._AC_UY218_.jpg",
            "description": "PCCOOLER Halo Fixed Color Fan with 1400 RPM, 120mm 4-Pin PWM RGB Fan",
            "price": 400
        }
    ]
    pc.sort((a, b) => {
        return a.price - b.price;
    });

    let list = document.getElementById("ulList");
    list.innerHTML = ''
    pc.forEach((item) => {
        let li = document.createElement("li");
        let div = document.createElement("div");
        div.setAttribute("class", "img");
        let img = document.createElement("img");
        img.setAttribute("src", item.img);
        img.setAttribute("alt", "product");
        img.setAttribute("width", "200");
        img.setAttribute("height", "200");
        div.appendChild(img);
        li.append(div)
        let desc = document.createElement("div");
        desc.setAttribute("class", "description");
        desc.innerText = item.description;
        li.append(desc);
        list.appendChild(li);
    })

}
