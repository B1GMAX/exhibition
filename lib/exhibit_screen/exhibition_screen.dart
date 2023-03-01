import 'package:exhibit/exhibit_model/exhibit.dart';
import 'package:exhibit/exhibit_element/exhibition_element.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../exhibit_bloc/exhibition_bloc.dart';

class ExhibitionScreen extends StatelessWidget {
  const ExhibitionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<ExhibitionBloc>(
      lazy: false,
      create: (context) => ExhibitionBloc(),
      dispose: (context, bloc) => bloc.dispose(),
      builder: (context, _) {
        return Scaffold(
          body: StreamBuilder<List<Exhibit>>(
              initialData: const [],
              stream: context.read<ExhibitionBloc>().exhibitStream,
              builder: (context, exhibitSnapshot) {
                return ListView.builder(
                    itemCount: exhibitSnapshot.data!.length,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        height: 200,
                        child: ExhibitionElement(
                          exhibit: exhibitSnapshot.data![index],
                        ),
                      );
                    });
              }),
        );
      },
    );
  }
}
