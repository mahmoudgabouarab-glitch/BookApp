import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:BookApp/features/search/presentation/view_models/search_cubit/search_cubit.dart';

class CustomTextFiledSearch extends StatelessWidget {
  const CustomTextFiledSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        onChanged: (value) {
          context.read<SearchCubit>().fetchsearchBooks(value);
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          suffixIcon: const Opacity(
            opacity: 0.5,
            child: Icon(Icons.search),
          ),
          labelText: "what do u want",
        ),
      ),
    );
  }
}
