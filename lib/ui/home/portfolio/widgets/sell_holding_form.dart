import 'package:flutter/material.dart';
import 'package:flutter_finance_portfolio/data/models/holding_model.dart';
import 'package:flutter_finance_portfolio/ui/home/portfolio/controllers/portfolio_controller.dart';
import 'package:flutter_finance_portfolio/ui/shared/widgets/btn.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SellHoldingForm extends ConsumerStatefulWidget {
  const SellHoldingForm({super.key, required this.holding});
  final HoldingModel holding;

  @override
  ConsumerState<SellHoldingForm> createState() => _SellHoldingFormState();
}

class _SellHoldingFormState extends ConsumerState<SellHoldingForm> {
  final _formKey = GlobalKey<FormState>();
  late int _quantity;
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _quantity = 1;
    _controller = TextEditingController(text: _quantity.toString());
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onSubmitPressed(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      Navigator.of(context).pop(_quantity);
      final portfolioController = ref.read(
        portfolioControllerProvider.notifier,
      );

      portfolioController.sellHolding(_quantity, widget.holding);
    }
  }

  void _incrementQuantity() {
    if (_quantity < widget.holding.quantity) {
      setState(() {
        _quantity++;
        _controller.text = _quantity.toString();
      });
    }
  }

  void _decrementQuantity() {
    if (_quantity > 1) {
      setState(() {
        _quantity--;
        _controller.text = _quantity.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final stock = widget.holding.stock;

    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
        top: 30,
        left: 20,
        right: 20,
      ),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Sezione Info Stock
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(stock.logoUrl),
                  radius: 20,
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      stock.name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      stock.symbol,
                      style: const TextStyle(color: Colors.grey),
                    ),
                    Row(
                      children: [
                        Text(stock.formattedCurrentPrice),
                        Text(
                          " You have ${widget.holding.quantity} share${widget.holding.quantity > 1 ? 's' : ''}",
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30),

            // Campo Quantità
            Row(
              children: [
                IconButton(
                  onPressed: _quantity > 1 ? _decrementQuantity : null,
                  icon: const Icon(Icons.remove),
                ),
                Expanded(
                  child: TextFormField(
                    controller: _controller,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Quantity to sell',
                    ),
                    validator: (value) {
                      final val = int.tryParse(value ?? '');
                      if (val == null || val < 1) {
                        return 'Enter a valid quantity';
                      }
                      if (val > widget.holding.quantity) {
                        return 'Cannot sell more than you own';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      final val = int.tryParse(value);
                      if (val != null &&
                          val >= 1 &&
                          val <= widget.holding.quantity) {
                        setState(() {
                          _quantity = val;
                        });
                      }
                    },
                  ),
                ),
                IconButton(
                  onPressed:
                      _quantity < widget.holding.quantity
                          ? _incrementQuantity
                          : null,
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Pulsante Confirm
            Btn(label: 'Confirm', onPressed: () => _onSubmitPressed(context)),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
