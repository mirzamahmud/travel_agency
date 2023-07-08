import 'package:flutter/material.dart';
import 'package:travel_agency/model/travel_agency_data.dart';
import 'package:travel_agency/view/components/homepage/travel_agency_items.dart';

class HomePageTravelAgency extends StatefulWidget 
{
  const HomePageTravelAgency({ Key? key }) : super(key: key);

  @override
  _HomePageTravelAgencyState createState() => _HomePageTravelAgencyState();
}

class _HomePageTravelAgencyState extends State<HomePageTravelAgency> 
{

  final _travelAgencyDataList = TravelAgencyData.generateTravelAgencyData();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: _travelAgencyDataList.length,
        separatorBuilder: (_, index) => const SizedBox(width: 10),
        itemBuilder: (context, index)
        {
          return GestureDetector(
            onTap: (){},
            child: TravelAgencyItem(_travelAgencyDataList[index])
          );
        }
      ),
    );
  }
}