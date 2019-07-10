<?php $__env->startSection('title', 'Pirañita Acuario'); ?>

<?php $__env->startSection('body-class','product-page'); ?>

<?php $__env->startSection('content'); ?>
    <div class="header header-filter"
         style="background-image: url('<?php echo e(asset('img/530206.jpg')); ?>');">
    </div>
    <div class="main main-raised">
        <div class="container">

            <div class="section">
                <h2 class="title text-left">Editar categoría seleccionada</h2>

                <?php if($errors->any()): ?>
                    <div class="alert alert-danger">
                        <ul>
                            <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <li><?php echo e($error); ?></li>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </ul>

                    </div>
                <?php endif; ?>

                <form method="post" action="<?php echo e(url('/admin/categories/'.$category->id.'/edit')); ?>"
                      enctype="multipart/form-data">
                    <?php echo e(csrf_field()); ?>


                    <div class="row">
                        <div class="col-sm-4">
                            <div class="form-group label-floating">
                                <label class="control-label">Nombre de la categoría</label>
                                <input type="text" class="form-control" name="name"
                                       value="<?php echo e(old('name', $category->name)); ?>">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <label class="control-label">Imagen de la categoría</label>
                            <input type="file" name="image">
                            <?php if($category->image): ?>
                                <table>
                                    <td>
                                <p class="help-block">
                                    Subir solo si desea reemplzar la
                                    <a href = "<?php echo e(asset('/images/categories/'.$category->image)); ?>"
                                       target="_blank">imagen actual</a>
                                </p>
                                    </td>
                                </table>
                            <?php endif; ?>
                        </div>
                    </div>


                    <textarea class="form-control" placeholder="Descripción de la categoría" rows="5"
                              name="description"><?php echo e(old('description', $category->description)); ?></textarea>


                    <button class="btn btn-warning">Guardar cambios</button>
                    <a href="<?php echo e(url('/admin/categories')); ?>" class="btn btn-info">Cancelar</a>


                </form>
            </div>
        </div>
    </div>
    <?php echo $__env->make('includes.footer', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>