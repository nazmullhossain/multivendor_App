class StoreModel {
  String? message;
  Data? data;

  StoreModel({this.message, this.data});

  StoreModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  String? staffName;
  String? carName;
  String? companyName;
  String? classification;
  String? salesType;
  String? cName;
  String? icBrNo;
  String? hpNo;
  String? bookingFee;
  Null? multipleAmount;
  String? step1;
  String? step2;
  String? step3;
  String? step4;
  Null? step5;
  String? step6;
  Null? step7;
  Null? step8;
  Null? step9;
  Null? step10;
  Null? step11;
  Null? step12;
  Null? step13;
  Null? step14;
  Null? step15;
  Null? step16;
  Null? step17;
  Null? step18;
  Null? step19;
  String? step20;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
        this.staffName,
        this.carName,
        this.companyName,
        this.classification,
        this.salesType,
        this.cName,
        this.icBrNo,
        this.hpNo,
        this.bookingFee,
        this.multipleAmount,
        this.step1,
        this.step2,
        this.step3,
        this.step4,
        this.step5,
        this.step6,
        this.step7,
        this.step8,
        this.step9,
        this.step10,
        this.step11,
        this.step12,
        this.step13,
        this.step14,
        this.step15,
        this.step16,
        this.step17,
        this.step18,
        this.step19,
        this.step20,
        this.createdAt,
        this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    staffName = json['staff_name'];
    carName = json['car_name'];
    companyName = json['company_name'];
    classification = json['classification'];
    salesType = json['sales_type'];
    cName = json['c_name'];
    icBrNo = json['ic_br_no'];
    hpNo = json['hp_no'];
    bookingFee = json['booking_fee'];
    multipleAmount = json['multiple_amount'];
    step1 = json['step1'];
    step2 = json['step2'];
    step3 = json['step3'];
    step4 = json['step4'];
    step5 = json['step5'];
    step6 = json['step6'];
    step7 = json['step7'];
    step8 = json['step8'];
    step9 = json['step9'];
    step10 = json['step10'];
    step11 = json['step11'];
    step12 = json['step12'];
    step13 = json['step13'];
    step14 = json['step14'];
    step15 = json['step15'];
    step16 = json['step16'];
    step17 = json['step17'];
    step18 = json['step18'];
    step19 = json['step19'];
    step20 = json['step20'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['staff_name'] = this.staffName;
    data['car_name'] = this.carName;
    data['company_name'] = this.companyName;
    data['classification'] = this.classification;
    data['sales_type'] = this.salesType;
    data['c_name'] = this.cName;
    data['ic_br_no'] = this.icBrNo;
    data['hp_no'] = this.hpNo;
    data['booking_fee'] = this.bookingFee;
    data['multiple_amount'] = this.multipleAmount;
    data['step1'] = this.step1;
    data['step2'] = this.step2;
    data['step3'] = this.step3;
    data['step4'] = this.step4;
    data['step5'] = this.step5;
    data['step6'] = this.step6;
    data['step7'] = this.step7;
    data['step8'] = this.step8;
    data['step9'] = this.step9;
    data['step10'] = this.step10;
    data['step11'] = this.step11;
    data['step12'] = this.step12;
    data['step13'] = this.step13;
    data['step14'] = this.step14;
    data['step15'] = this.step15;
    data['step16'] = this.step16;
    data['step17'] = this.step17;
    data['step18'] = this.step18;
    data['step19'] = this.step19;
    data['step20'] = this.step20;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
