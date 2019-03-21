import model as m
import chainer
import chainer.links as L
from chainer import optimizers
from chainer import training
from chainer.training import extensions
from chainer import iterators


def main():
    # datasets
    train, test =

    model = L.Classifier(m.{{_expr_: substitute('{{_input_: name}}', '/w/+', '/u/0','')}}())
    gpu_id = 0
    model.to_gpu(gpu_id)

    optimizer = optimizers.Adam()
    optimizer.setup(model)

    batch_size = 100
    epoch = 20

    train_iter = iterators.SerialIterator(train, batch_size)
    test_iter = iterators.SerialIterator(
        test, batch_size, repeat=False, shuffle=False)

    updater = training.StandardUpdater(train_iter, optimizer, device=gpu_id)

    trainer = training.Trainer(updater, (epoch, 'epoch'), out='result')
    trainer.extend(extensions.LogReport())
    trainer.extend(extensions.Evaluator(test_iter, model, device=gpu_id))
    trainer.extend(extensions.PrintReport(
        ['epoch', 'main/loss', 'validation/main/loss',
            'main/accuracy', 'validation/main/accuracy', 'elapsed_time']))
    trainer.extend(extensions.PlotReport(
        ['main/loss', 'validation/main/loss'],
        x_key='epoch', file_name='loss.png'))
    trainer.extend(extensions.PlotReport(
        ['main/accuracy', 'validation/main/accuracy'],
        x_key='epoch', file_name='accuracy.png'))

    trainer.run()
    model.to_cpu()
    chainer.serializers.save_npz('{{_input_: name}}.npz', model)


if __name__ == '__main__':
    main()
