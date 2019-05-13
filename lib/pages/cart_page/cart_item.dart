import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../model/cart_info.dart';
class CartItemView extends StatelessWidget {
  final CartInfo cartInfoItem;
  CartItemView(this.cartInfoItem);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil.instance.setHeight(100),
      margin: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 2.0),
      padding: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(width: 1.0,color: Colors.black12),
        ),
      ),
      child: Row(
        children: <Widget>[

        ],
      ),
    );
  }
  //多选的选择按钮
  Widget _checkBox(){
    return Container(
      child: Checkbox(
        activeColor: Colors.blueAccent,
        value: true,
        onChanged: (checked){
          //TODO 更改选中状态
        },
      ),
    );
  }
  //商品配图
  Widget _goodsImage(){
    return Container(
      width: ScreenUtil.instance.setWidth(150),
      decoration: BoxDecoration(
        border: Border.all(width: 1.0,color: Colors.grey),
      ),
      child: Image.network(this.cartInfoItem.images),
    );
  }
  //商品名称
  Widget _goodsName(){
    return Container(
      width: ScreenUtil.instance.setWidth(300),
      child: Column(
        children: <Widget>[
            Text(
              this.cartInfoItem.goodsName,
              style: TextStyle(
                color: Colors.black26,
                fontSize: ScreenUtil.instance.setSp(25),
              ),
            ),
          ],
        ),
    );
  }
  //商品价格
  Widget _goodsPrice(){
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            '￥ ${this.cartInfoItem.price}',
            style:TextStyle(color: Colors.black)
            ),
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: (){
              //TODO 删除商品按钮
            },
          ),
        ],
      ),
    );
  }
}