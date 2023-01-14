import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:untitled2/models/ShopScreen//Products.dart';
import 'package:untitled2/models/ShopScreen/Catagory.dart';
import 'package:untitled2/shared/components/CarouselWithDotsPage.dart';
import 'package:untitled2/shared/components/components.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var searchProduct=TextEditingController();
   // List<int> list = [1, 2, 3, 4, 5];
    final List<String> list = [
      'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
      'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
      'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
      'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
    ];
    
    List<Products> productsObj=[
      Products(image: 'https://i.ebayimg.com/images/g/ycwAAOSw92hekmWN/s-l500.jpg', desc: 'Fs- Nike Aire Max 270 Reacoooo', price: 299.5),
      Products(image: 'https://images-eu.ssl-images-amazon.com/images/G/42/Sunrise/SL/XCM_Manual_1323197_Egypt_SR_EG_CP_NT_SL_WomensBagsPage_WomenBagsBackpacks_3868510_750x375_2X.jpg', desc: 'Fs- Nike Aire Max 270 Reacoooo', price: 250.0),
      Products(image: 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/2e3c9729-aadf-49d4-a3ab-2a11ac92cacf/heritage-backpack-25l-kq3lKx.png', desc: 'Fs- Nike Aire Max 270 Reacoooo', price: 250.0),
      Products(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTV40tH9r0W-rGOvl3eP6FqRLbl-g_k7XkGvA&usqp=CAU', desc: 'Fs- Nike Aire Max 270 Reacoooo', price: 250.0),
      Products(image: 'https://static.nike.com/a/images/t_default/2ae01600-19b1-4d59-a541-d5bb68af8460/air-max-270-mens-shoes-KkLcGR.png', desc: 'Fs- Nike Aire Max 270 Reacoooo', price: 250.0),
      Products(image: 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/b0850f70-2300-4850-b054-dc3018856115/air-max-backpack-17l-GXxPMc.png', desc: 'Fs- Nike Aire Max 270 Reacoooo', price: 250.0),
      Products(image: 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/2e3c9729-aadf-49d4-a3ab-2a11ac92cacf/heritage-backpack-25l-kq3lKx.png', desc: 'Fs- Nike Aire Max 270 Reacoooo', price: 250.0),
      Products(image: 'https://i.pinimg.com/originals/79/6d/e8/796de87f77112c945d1d3b9ea9ce4bfc.jpg', desc: 'Fs- Nike Aire Max 270 Reacoooo', price: 250.0),

    ];

    List<Products> MegoObj=[
      Products(image: 'https://images-eu.ssl-images-amazon.com/images/G/42/Sunrise/SL/XCM_Manual_1323197_Egypt_SR_EG_CP_NT_SL_WomensBagsPage_WomenBagsHandbags_3868511_750x375_2X.jpg', desc: 'Fs- Nike Aire Max 270 Reacoooo', price: 299.5),
      Products(image: 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/2e3c9729-aadf-49d4-a3ab-2a11ac92cacf/heritage-backpack-25l-kq3lKx.png', desc: 'Fs- Nike Aire Max 270 Reacoooo', price: 250.0),
      Products(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTV40tH9r0W-rGOvl3eP6FqRLbl-g_k7XkGvA&usqp=CAU', desc: 'Fs- Nike Aire Max 270 Reacoooo', price: 250.0),
      Products(image: 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/b0850f70-2300-4850-b054-dc3018856115/air-max-backpack-17l-GXxPMc.png', desc: 'Fs- Nike Aire Max 270 Reacoooo', price: 250.0),
      Products(image: 'https://images-eu.ssl-images-amazon.com/images/G/42/Sunrise/SL/XCM_Manual_1323197_Egypt_SR_EG_CP_NT_SL_WomensBagsPage_WomenBagsBackpacks_3868510_750x375_2X.jpg', desc: 'Fs- Nike Aire Max 270 Reacoooo', price: 250.0),
      Products(image: 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/2e3c9729-aadf-49d4-a3ab-2a11ac92cacf/heritage-backpack-25l-kq3lKx.png', desc: 'Fs- Nike Aire Max 270 Reacoooo', price: 250.0),
      Products(image: 'https://i.pinimg.com/originals/79/6d/e8/796de87f77112c945d1d3b9ea9ce4bfc.jpg', desc: 'Fs- Nike Aire Max 270 Reacoooo', price: 250.0),
      Products(image: 'https://static.nike.com/a/images/t_default/2ae01600-19b1-4d59-a541-d5bb68af8460/air-max-270-mens-shoes-KkLcGR.png', desc: 'Fs- Nike Aire Max 270 Reacoooo', price: 250.0),


    ];
    
    List<Catagory> catagoryObj=[
      Catagory(image: 'https://cdn-icons-png.flaticon.com/512/863/863684.png', desc: 'Man Shirt'),
      Catagory(image: 'https://cdn-icons-png.flaticon.com/512/1785/1785255.png', desc: 'Dress'),
      Catagory(image:'https://cdn-icons-png.flaticon.com/512/6536/6536699.png' , desc: 'Man Work Equipment'),
      Catagory(image: 'https://cdn-icons-png.flaticon.com/512/4101/4101375.png', desc: 'Woman BAg'),
      Catagory(image: 'https://cdn-icons-png.flaticon.com/512/863/863684.png', desc: 'Man Shirt'),
    ];
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
            CarouselWithDotsPage(imgList: list),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     Padding(
                       padding: const EdgeInsetsDirectional.only(start: 10),
                       child: Text('Catagory',),
                     ),
                      SizedBox(
                        width:185 ,
                      ),
                      Text('More Catagory',  style: TextStyle(color: Colors.blue))
                  ],
                  ),

                 SizedBox(
                   height: 20,
                 ),
                  Container(

                    height: 120,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => buildCatagory(catagoryObj[index]),
                     separatorBuilder: (context, index) => SizedBox(
                       width: 4,
                     ),
                        itemCount: catagoryObj.length),
                  ),

                  SizedBox(
                    height: 10,
                  ), //2section


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.only(start: 10),
                        child: Text('Flash',),
                      ),
                      SizedBox(
                        width:240 ,
                      ),
                      Text('See More',  style: TextStyle(color: Colors.blue))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 200,

                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => buildFlash(productsObj[index]),
                        separatorBuilder: (context, index) => SizedBox(
                          width: 4,
                        ),
                        itemCount: 6),
                  ),

                  SizedBox(
                    height: 10,
                  ), //3section

                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.only(start: 10),
                        child: Text('Mego Sale',),
                      ),
                      SizedBox(
                        width:208 ,
                      ),
                      Text('See More',  style: TextStyle(color: Colors.blue))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(

                    height: 200,

                    child: GestureDetector(
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => buildMego(MegoObj[index]),
                          separatorBuilder: (context, index) => SizedBox(
                            width: 10,
                          ),
                          itemCount: 6),
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Image.network('https://res.cloudinary.com/powerreviews/image/upload/f_auto,q_auto,h_768,w_auto/d_portal-no-product-image_ttlfpi.svg/prod/d5gsygnf5lmlibrlkxhj.jpg',
                            color: Colors.white.withOpacity(0.6), colorBlendMode: BlendMode.modulate,

                          )),
                      Column(

                        children: [
                          Text('Recommend\nProduct', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.amber, fontSize: 25),),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                              start: 20
                            ),
                            child: Text('we recommend the for you', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),),
                          ),



                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),


                  Container(
                    height: 250,
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                      itemBuilder: (_, index) => buildFlash(productsObj[index]),
                      itemCount: 4,
                    ),
                  )






                ],
              ),



            ],
          ),
        ),

      );




  }

  Widget buildCatagory(Catagory catagory){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 55,
        child: Column(
          children: [
            PhysicalModel(
              color: Colors.black,
              elevation: 10.0,
              shape: BoxShape.circle,
              child: CircleAvatar(
                radius: 25,
                child: Image.network(catagory.image,scale: 20,),
                backgroundColor: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 8),
              child: Text(catagory.desc,
                style: TextStyle(fontSize: 8,),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildFlash(Products products){
    return Container(
      width: 150,
      child: Container(
        decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 215, 221, 237)),
        //color: Color.fromARGB(255, 215, 221, 237),
        borderRadius: BorderRadius.circular(15),
        ),
       // shape: BoxShape.
        child: InkWell(
          onTap: (){

          },
          child: Padding(
            padding: const EdgeInsets.all(7.0),
            child: Container(

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Image.network(products.image,scale: 5,width: 100, height: 100,),
                  SizedBox(
                    height: 10,
                  ),
                   Text(products.desc, style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                     maxLines: 1,
                     overflow: TextOverflow.ellipsis,
                   ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('\$${products.price.toString()}', style: TextStyle(fontSize: 10, color: Colors.blue), ),

                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text('\$530,3', style: TextStyle(fontSize: 10, color: Colors.grey, decoration: TextDecoration.lineThrough), ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('24\% off', style: TextStyle(fontSize: 10, color: Colors.red, ), ),

                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildMego(Products products){
    return Container(
      width: 150,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        // shape: BoxShape.
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(products.image,scale: 5,width: 100, height: 100,),
              SizedBox(
                height: 10,
              ),
              Text(products.desc, style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 10,
              ),
              Text('\$${products.price.toString()}', style: TextStyle(fontSize: 10, color: Colors.blue), ),

              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text('\$530,3', style: TextStyle(fontSize: 10, color: Colors.grey, decoration: TextDecoration.lineThrough), ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('24\% off', style: TextStyle(fontSize: 10, color: Colors.red, ), ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}
