import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_pokedex/constants/constants.dart';
import 'package:flutter_pokedex/constants/ui_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../model/pokemon_model.dart';

class PokeInfo extends StatelessWidget {
  final PokemonModel pokemonModel;
  const PokeInfo({Key? key, required this.pokemonModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10.w),
        ),
        color: Colors.white,
      ),
      child: Padding(
        padding: UIHelper.getIconPadding(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildInfoRow('Name', pokemonModel.name),
            _buildInfoRow('Height', pokemonModel.height),
            _buildInfoRow('Weight', pokemonModel.weight),
            _buildInfoRow('Spawn Time', pokemonModel.spawnTime),
            _buildInfoRow('Weaknesses', pokemonModel.weaknesses),
            _buildInfoRow('Pre Evolution', pokemonModel.prevEvolution),
            _buildInfoRow('Next Evoulution', pokemonModel.nextEvolution),
          ],
        ),
      ),
    );
  }

  _buildInfoRow(String label, dynamic value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: Constants.getPokeInfoLabelStyle(),
        ),
        if (value is List && value.isNotEmpty)
          Text(
            value.join(' , '),
            style: Constants.getPokeInfoTextStyle(),
          )
        else if (value == null)
          Text(
            'Not Available',
            style: Constants.getPokeInfoTextStyle(),
          )
        else
          Text(value),
      ],
    );
  }
}
