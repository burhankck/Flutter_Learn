part of './part_of_learn.dart';

class _PartofAppBar extends StatelessWidget with PreferredSizeWidget {
  const _PartofAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('aa'),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.abc_outlined))
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

// part_of ile private olan sınıfları birbirine çağırabiliyoruz. 

// extra widget dedigimizde sorun olabiliyor bunun icin with preferredSizeWidget diyip height ekleriz. Bu Sekilde sorun cözülür.
