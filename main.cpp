#include <QCoreApplication>
#include "QRealFourier-master/code/headers/qfouriertransformer.h"
#include "QRealFourier-master/code/examples/print.h"
#include <QtMultimedia/QSoundEffect>
#include <QtMultimedia/QAudioProbe>

/*
int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    return a.exec();
}
*/

const int SIZE = 128;

int main()
{

    float samples[SIZE];
    float fft[SIZE];

    //Creating sample values
    for(int i = 0; i < SIZE; ++i)
    {
        samples[i] = i / float(SIZE);
    }

    print("Samples before transformation:\n");
    print(samples, SIZE);

    //QFourierTransformer transformer;
    QFourierTransformer transformer(SIZE, "QRectangularFunction");

    //Setting a fixed size for the transformation
    if(transformer.setSize(SIZE) == QFourierTransformer::VariableSize)
    {
        print("This size is not a default fixed size of QRealFourier. Using a variable size instead.\n");
    }
    else if(transformer.setSize(SIZE) == QFourierTransformer::InvalidSize)
    {
        print("Invalid FFT size.\n");
        return -1;
    }

    QSoundEffect *sound;
    QAudioProbe *probe = new QAudioProbe;

    sound->setSource(QUrl::fromLocalFile("C:/Users/PC-LAB/Documents/untitled2/sample_01.wav"));
    //connect(probe, SIGNAL(audioBufferProbed(QAudioBuffer)), this, SLOT(processBuffer(QAudioBuffer)));

    transformer.forwardTransform(samples, fft);
    transformer.inverseTransform(fft, samples);

    print("Samples after transformation and before rescaling:\n");
    print(samples, SIZE);

    transformer.rescale(samples);
    print("Samples after rescaling:\n");
    print(samples, SIZE);

    return 0;
}
