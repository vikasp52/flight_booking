import 'package:flight_booking/core/assets/assets.dart';
import 'package:flight_booking/core/common_widgets/common_widgets.dart';
import 'package:flight_booking/core/routing/routing.dart';
import 'package:flight_booking/core/utils/utils.dart';
import 'package:flight_booking/features/flight_results/data/model/flight_search.dart';
import 'package:flight_booking/features/home/presentation/cubit/flight_data_cubit.dart';
import 'package:flight_booking/features/home/presentation/screens/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _formKey = GlobalKey<FormState>();
  final _flyingFromController = TextEditingController();
  final _flyingToController = TextEditingController();
  final _departureController = TextEditingController();
  final _returnController = TextEditingController();
  final _travellersController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<FlightDataCubit>();

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 24.h),
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 22.h,
                ),
                const HomeAppBar(),
                Expanded(
                  child: DefaultTabController(
                    length: 3,
                    child: Column(
                      children: [
                        const HomeTabBar(),
                        Expanded(
                          flex: 7,
                          child: TabBarView(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20.w,
                                ),
                                child: SingleChildScrollView(
                                  child: SizedBox(
                                    height: MediaQuery.of(context).size.height,
                                    child: BlocBuilder<FlightDataCubit,
                                        FlightDataState>(
                                      builder: (context, state) {
                                        return Form(
                                          key: _formKey,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              SizedBox(
                                                height: 20.h,
                                              ),
                                              FlightType(cubit: cubit),
                                              FlyingToAndFrom(
                                                  flyingFromController:
                                                      _flyingFromController,
                                                  flyingToController:
                                                      _flyingToController),
                                              SizedBox(
                                                height: 14.h,
                                              ),
                                              DepartureAndArrival(
                                                departureController:
                                                    _departureController,
                                                cubit: cubit,
                                                returnController:
                                                    _returnController,
                                              ),
                                              SizedBox(
                                                height: 18.h,
                                              ),
                                              CutomTextField(
                                                onTap: () =>
                                                    selectTravellerAndClass(
                                                  context,
                                                  cubit,
                                                ),
                                                controller:
                                                    _travellersController,
                                                label: 'Travellers & Class',
                                                readOnly: true,
                                                icon: Icons.person_2,
                                                validator: (value) =>
                                                    CustomValidation
                                                        .emptyValidation(
                                                  value,
                                                  'Please select no. of traveller',
                                                ),
                                              ),
                                              SizedBox(
                                                height: 20.h,
                                              ),
                                              ElevatedButton(
                                                onPressed: () {
                                                  if (_formKey.currentState!
                                                      .validate()) {
                                                    FocusManager
                                                        .instance.primaryFocus
                                                        ?.unfocus();

                                                    final flightData =
                                                        FlightSearch(
                                                      journeyType:
                                                          cubit.getFlightType(
                                                        state.journeyType,
                                                      ),
                                                      departureDate:
                                                          _departureController
                                                              .text,
                                                      returnDate:
                                                          _returnController
                                                              .text,
                                                      airportOriginCode:
                                                          _flyingFromController
                                                              .text,
                                                      airportDestinationCode:
                                                          _flyingToController
                                                              .text,
                                                      flightClass: cubit
                                                          .getFlightClass(state
                                                              .flightClass),
                                                      adults: state.adultCount,
                                                      childs:
                                                          state.childrenCount,
                                                      infants:
                                                          state.infantCount,
                                                    );

                                                    RouteGenerator.pushName(
                                                      routeName: RouteGenerator
                                                          .flightResultRoute,
                                                      argument: flightData,
                                                    );
                                                  }
                                                },
                                                child: const Text(
                                                  'Search',
                                                ),
                                              ),
                                              SizedBox(
                                                height: 24.h,
                                              ),
                                              Text(
                                                'Best Places',
                                                style:
                                                    CustomTypography.nameLabel,
                                              ),
                                              const BestPlaces()
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              const Center(
                                child: Text('Hotels'),
                              ),
                              const Center(
                                child: Text('Car Rental'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<dynamic> selectTravellerAndClass(
      BuildContext context, FlightDataCubit cubit) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => BlocProvider.value(
        value: cubit,
        child: Padding(
          padding: EdgeInsets.all(12.w),
          child: BlocBuilder<FlightDataCubit, FlightDataState>(
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Select Traveller & Class',
                        style: CustomTypography.buttonTextWhite.copyWith(
                          color: CustomColors.black,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.close,
                          color: CustomColors.black,
                        ),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ],
                  ),
                  const Divider(
                    color: CustomColors.primary,
                  ),
                  NoOfTraveller(
                    title: 'Adult',
                    subTitle: '12 yrs & above',
                    total: state.adultCount.toString(),
                    onAddPressed: () => cubit.addRemoveAdult(true),
                    onRemovePressed: () => cubit.addRemoveAdult(false),
                  ),
                  NoOfTraveller(
                    title: 'Children',
                    subTitle: '2 - 12 yrs',
                    total: state.childrenCount.toString(),
                    onAddPressed: () => cubit.addRemoveChildren(true),
                    onRemovePressed: () => cubit.addRemoveChildren(false),
                  ),
                  NoOfTraveller(
                    title: 'Infant',
                    subTitle: 'Under 2 yrs',
                    total: state.infantCount.toString(),
                    onAddPressed: () => cubit.addRemoveInfant(true),
                    onRemovePressed: () => cubit.addRemoveInfant(false),
                  ),
                  const Divider(
                    color: CustomColors.primary,
                  ),
                  Flexible(
                    child: ListView(
                      children: [
                        'Premium Economy',
                        'Economy',
                        'Business Class',
                        'First'
                      ]
                          .asMap()
                          .map(
                            (i, element) => MapEntry(
                              i,
                              RadioListTile(
                                value: i,
                                groupValue: state.flightClass,
                                title: Text(element),
                                onChanged: (value) => cubit.selectFlightClass(
                                  value ?? 1,
                                ),
                              ),
                            ),
                          )
                          .values
                          .toList(),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(
                        () {
                          _travellersController.text =
                              'Total Traveller ${state.adultCount + state.childrenCount + state.infantCount}';
                        },
                      );

                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Done',
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
