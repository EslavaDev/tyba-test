class ColorRGBA {
    int r;
    int g;
    int b;
    double opacity;

    ColorRGBA({
        this.r,
        this.g,
        this.b,
        this.opacity,
    });

    factory ColorRGBA.fromJson(Map<String, dynamic> json) => ColorRGBA(
        r: json['r'],
        g: json['g'],
        b: json['b'],
        opacity: json['opacity'].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        'r': r,
        'g': g,
        'b': b,
        'opacity': opacity,
    };
}