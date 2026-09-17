import 'package:flutter/material.dart';
import 'dados_destino.dart';

class DetalhesPage extends StatelessWidget {
  final String cidade;

  const DetalhesPage({
    super.key,
    required this.cidade,
  });

  @override
  Widget build(BuildContext context) {
    final dados = buscarDestino(cidade);

    return Scaffold(
      appBar: AppBar(
        title: Text(dados['cidade']),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            // Imagens
            Image.asset(
              dados['img'],
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            // Localização
            Card(
              margin: const EdgeInsets.all(8),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      color: Colors.blue,
                      size: 28,
                    ),

                    const SizedBox(width: 10),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          dados['cidade'],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Text(
                          dados['estado'],
                          style: const TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Sobre
            Card(
  margin: const EdgeInsets.symmetric(
    horizontal: 8,
    vertical: 4,
  ),
  child: SizedBox(
    width: double.infinity,
    child: Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Sobre o destino',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            dados['desc'],
            style: const TextStyle(
              fontSize: 14,
              height: 1.4,
            ),
          ),
        ],
      ),
    ),
  ),
),

            // Informações rápidas
            Card(
              margin: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 4,
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const Text(
                      'Informações rápidas',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),

                    const SizedBox(height: 10),

                    Row(
                      children: [

                        // Clima
                        Expanded(
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  const Icon(
                                    Icons.cloud_outlined,
                                    color: Colors.blue,
                                  ),

                                  const SizedBox(height: 5),

                                  const Text(
                                    'Clima',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  Text(dados['clima']),
                                ],
                              ),
                            ),
                          ),
                        ),

                        // Melhor época
                        Expanded(
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  const Icon(
                                    Icons.calendar_month,
                                    color: Colors.blue,
                                  ),

                                  const SizedBox(height: 5),

                                  const Text(
                                    'Melhor época',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  Text(dados['melhor_epoca']),
                                ],
                              ),
                            ),
                          ),
                        ),

                        // Tempo médio
                        Expanded(
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  const Icon(
                                    Icons.timer_outlined,
                                    color: Colors.blue,
                                  ),

                                  const SizedBox(height: 5),

                                  const Text(
                                    'Tempo médio',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  Text(dados['tempo_medio']),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Principais atrações
            Card(
  margin: const EdgeInsets.symmetric(
    horizontal: 8,
    vertical: 4,
  ),
  child: Padding(
    padding: const EdgeInsets.all(12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        const Text(
          'Principais atrações',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),

        const SizedBox(height: 8),

        ListTile(
          title: Text(dados['atracoes'][0]),
          trailing: const Icon(Icons.chevron_right),
        ),

        const Divider(height: 1),

        ListTile(
          title: Text(dados['atracoes'][1]),
          trailing: const Icon(Icons.chevron_right),
        ),

        const Divider(height: 1),

        ListTile(
          title: Text(dados['atracoes'][2]),
          trailing: const Icon(Icons.chevron_right),
        ),

        const Divider(height: 1),

        ListTile(
          title: Text(dados['atracoes'][3]),
          trailing: const Icon(Icons.chevron_right),
        ),
      ],
    ),
  ),
),
          ],
        ),
      ),
    );
  }
}
