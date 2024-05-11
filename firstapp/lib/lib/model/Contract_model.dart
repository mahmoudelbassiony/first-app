
class ContractModel{

  String? sellerName , sellerIdNumber, TheSellerPlaceOfResidence ,sellerIdDate, buyerName , buyerIdNumber, TheBuyerPlaceOfResidence, buyerIdDate,  propertyLocation, OwnershipOfTheProperty,howToGetTheProperty;

  

  ContractModel({
    this.sellerName,
    this.sellerIdNumber,
    this.TheSellerPlaceOfResidence,
    this.sellerIdDate,
    this.buyerName, 
    this.buyerIdNumber,
    this.TheBuyerPlaceOfResidence,
    this.buyerIdDate,
    this.propertyLocation,
    this.OwnershipOfTheProperty, 
    this.howToGetTheProperty,
    });

  ContractModel.fromJson(Map<dynamic, dynamic> map){
    sellerName = map['اسم البائع']; 
    sellerIdNumber = map[' رقم بطاقه البائع '];
    TheSellerPlaceOfResidence = map[' مكان إقامه البائع '];
    sellerIdDate = map['تاريخ إصدار بطاقه البائع'];

    buyerName = map['اسم المشتري '];
    buyerIdNumber = map['رقم بطاقة المشتري '];
  TheBuyerPlaceOfResidence = map[' مكان إقامه المشتري '];
    buyerIdDate = map['تاريخ إصدار بطاقة المشتري'];

    
    propertyLocation = map['عنوان العقار '];
   OwnershipOfTheProperty = map['ملكيه العقار'];
 howToGetTheProperty = map['طريقه الحصول على الملكيه '];  
    }

  toJson(){
    return{
      'اسم البائع ': sellerName,
      ' رقم بطاقه البائع ': sellerIdNumber,
      'مكان إقامه البائع ': TheSellerPlaceOfResidence,
      'تاريخ إصدار بطاقه البائع ': sellerIdDate,

      'اسم المشتري ': buyerName,
      'رقم بطاقة المشتري ':buyerIdNumber,
      'مكان إقامه المشتري':TheBuyerPlaceOfResidence,
      'تاريخ إصدار بطاقة المشتري ': buyerIdDate,
    
      'عنوان العقار':  propertyLocation,
       'ملكيه العقار':  OwnershipOfTheProperty,
      'طريقه الحصول على الملكيه ':howToGetTheProperty,
    };
    }
    }

