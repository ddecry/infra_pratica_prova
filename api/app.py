from flask import Flask, request, jsonify
import os

app = Flask(__name__)

@app.route("/", methods=["GET"])
def index():
    return jsonify({
        "message": "Infra Prova API",
        "author": "Arthur de Holanda",
        "status": "ok"
    })

@app.route("/health", methods=["GET"])
def health():
    return jsonify({"status": "healthy"}), 200

@app.route("/sum", methods=["POST"])
def sum_values():
    data = request.get_json(force=True, silent=True)
    if not data:
        return jsonify({"error": "JSON body esperado"}), 400
    try:
        a = float(data.get("a", 0))
        b = float(data.get("b", 0))
    except Exception as e:
        return jsonify({"error": f"Entrada inválida: {e}"}), 400
    return jsonify({"a": a, "b": b, "sum": a + b}), 200

if __name__ == "__main__":
    port = int(os.environ.get("PORT", 5000))
    app.run(host="0.0.0.0", port=port)
