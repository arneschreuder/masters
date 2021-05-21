class Dense:
    weights = None
    biases = None

    def __init__(self):
        self.weights = tf.variable()
        self.biases = None
