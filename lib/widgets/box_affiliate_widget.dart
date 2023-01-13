  import 'package:flutter/material.dart';
import 'package:projet_box/constants/helpers.dart';

Future<dynamic> showAffiliates(BuildContext context) {
    return showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(15),
                        ),
                      ),
                      builder: (context) {
                        return DraggableScrollableSheet(
                          expand: false,
                          initialChildSize: 0.7,
                          minChildSize: 0.5,
                          maxChildSize: 1,
                          builder: (BuildContext context,
                                  ScrollController scrollController) =>
                              SingleChildScrollView(
                            controller: scrollController,
                            padding: const EdgeInsets.symmetric(
                              vertical: 20,
                              horizontal: 8,
                            ),
                            child: Column(
                              children: List.generate(
                                10,
                                (index) => ListTile(
                                  leading: CircleAvatar(
                                    radius: 30.0,
                                    backgroundColor:
                                        boxGoldenPrimary.withOpacity(0.1),
                                    child: const Icon(
                                      Icons.link,
                                      color: boxdarknessBlack,
                                    ),
                                  ),
                                  title: Text(
                                    "Johnathan Sawyer",
                                    style: makeTextStyleWith(
                                      textfontSize: 18,
                                      textfontWeight: FontWeight.w500,
                                      textColor: boxdarknessBlack,
                                    ),
                                  ),
                                  subtitle: Text(
                                    "15 Jan 2023",
                                    style: makeTextStyleWith(
                                      textfontSize: 15,
                                      textfontWeight: FontWeight.w400,
                                      textColor: boxdarknessBlack,
                                    ),
                                  ),
                                  trailing: Text(
                                    "12:20",
                                    style: makeTextStyleWith(
                                      textfontSize: 15,
                                      textfontWeight: FontWeight.w400,
                                      textColor: boxdarknessBlack,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      });
  }

