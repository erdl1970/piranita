<!doctype html>
<html lang="es">
<head>
    <title>Nuevo pedido</title>
</head>
<body>
<p>Se ha realizado un nuevo pedido</p>
<p>Estos son los datos del cliente que realizó el pedido:</p>
<ul>
    <li>
        <strong>Nombre:</strong>
        <?php echo e($user->name); ?>

    </li>
    <li>
        <strong>E-mail</strong>
        <?php echo e($user->email); ?>

    </li>
    <li>
        <strong>Fecha del pedido:</strong>
        <?php echo e($cart->order_date); ?>

    </li>
</ul>

<p>Estos son los detalles del pedido</p>
<ul>
    <?php $__currentLoopData = $cart->details; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $detail): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <li>
            <?php echo e($detail->product->name); ?> x <?php echo e($detail->quantity); ?>

            (S/. <?php echo e($detail->quantity * $detail->product->price); ?>)

        </li>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</ul>
<strong>Importe que el cliente debe pagar: </strong><?php echo e($cart->total); ?>

<hr>
<p>
    <a href="<?php echo e(url( '/admin/orders/'.$cart->id )); ?>">Haz clic aquí</a>
    para ver más información sobre este pedido.
</p>


</body>

</html>


