import 'package:flutter/material.dart';
import 'package:flutter_app/Level_2/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({super.key});

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  //final  user9 = PostModel7(body: 'Appbar Title');
  // final iken degisiklik yapamıyoruz var yaptık degeri.
  var user9 = PostModel7(body: 'Appbar Title');
  @override
  // void initState() {
  //   super.initState();

  //   final user1 = PostModel()
  //     ..userId = 1
  //     ..body = 'bk';
  //   user1.body = 'hello';

  //   final user2 = PostModel1(1, 2, 'a', 'b');
  //   user2.body = 'x';
  //   // user2.body = 'x'; yapabiliyoruz. Cünkü Final işaretlenmemiş, degerlerini alıyor sonradan update edilebiliyor.

  //   final user3 = PostModel2(3, 4, 'burhan', 'kocak');
  //   // user3.body = 'kck';
  //   // user3.body = 'kck; yapamiyoruz, Cünkü final işaretlenmis degerler. Bir daha degisemez.

  //   final user4 = PostModel3(userId: 1, id: 3, title: 'bb', body: 'kk');
  //   // user4.body = 'a';
  //   // user.body = a; degismez gene.
  //   // Local'de islem yapiyorsan TextField vs. Postmodel3 yeterli olacaktır.

  //   final user5 = PostModel4(userId: 33, id: 22, title: 'xx', body: 'vvv');
  //   user5.userId;
  //   // user5. dedigimizde verdigimiz nesnelere  erisim saglayamiyoruz.
  //   //  int get userId => userId; modellemede get ile cagırmamız lazım.
  //   // Senin yazdıgın kuralla cagirilir.

  //   final user6 = PostModel5(userId: 12, id: 11, title: 'aaa', body: 'dsss');
  //   // Post Model 4 ile aynidir.

  //   final user7 = PostModel6();

  //   final user8 = PostModel7(body: 'aa');
  //   // Service kullanim icin en mantikli postmodel7 kullanimi.
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            user9 = user9.copyWith(title: 'bff');
            user9.updateBody('Burhan');
           // user9.body = 'aaa'; Yanlış kullanim !!!
          });
        },
      ),
      appBar: AppBar(
        title: Text(user9.body ?? 'Not has any data'),
      ),
    );
  }
}
