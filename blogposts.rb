require 'base64'
require 'zlib'

def unpack(data)
    return nil if data == nil
    buf = Base64.decode64(data)
    str = Zlib::Inflate.inflate(buf)
    return str
end

@posts = {}
@post_id = []

@posts["b9d92c4a6970ecf4ccc5fb08401443be"] = "eNqFUktv2zAMvu9XELn0koebrShQZAHSBVsK7NVklx0Zi4nUyJIm0mn870fb\n8bDDgAGGIdP8HvyohXFnKD0yvx9hFld6mogTT6PlBgNzDLDOMTGsvIf1I+zq\nlGIWOORYwRad5zGsTEzC8Fwju8kGsymjIQMfPcrk4DzB17h7/gxPgYXQLGYq\nuXyz+IewQVHdHQrsKMH8Doq3D/P7h9t3MCnuiwLmxW0xwK8YPaXlGs/OwIZc\noIocZRisYwixDqWakWiwAbHKvY1beHU6zp7A6GzJhSPwMFfM8KVRu2P4HlmO\nmbrzh1iXdv04VkYDdKbciG1h5Jl6VsfhRv6XwRR+WMcQ6LUVqjoY7JG1s06t\nX+h6r4SQ6VftMt2oJJYWxFXtPwJMybsSxSlE2zzqjLYdssWxq5JvwCIr3QbZ\ndp4xwCrnIQK2sfYGbNRXyiTSQKUDalcDugTsu+jiWPfaRoLqBTXR6WKW/oqc\nUzyppQjbb4D7WIsC1VCFL4opLYYjjYGxaaMa/SS0+kVaerqpQDIF0/SJdih9\n+poupsRag3VDrBSEcspOa+pDO1pL4boD7059ZFPlPZOqG4I7vS7H3HLHw6El\nQt8hp6Nhgk8xHjVrVaVLolK6S6LgU5/xS10l2De9tS75QBeBhjBfQ5j9uYK/\nARCEIIY=\n"
@post_id.push "b9d92c4a6970ecf4ccc5fb08401443be"

@posts["9de5488bc5eebb63f6eebe264b9dc6d5"] = "eNptkEFLA0EMhe/+ikfP1m4LpVLWgngQBEGoIHiLMyk7dGYyzMxuu/56s9J6\n8pQHyffykta6AcZTKQ8zytUZz/PqqufZ7oly4DNcwbOIxUEyXiUeeSy3eBdp\nF4rubtp/DCxV5fdUseeE1RrLzbZZb5f3mDebpsGqWTZX/MKoSrsPyUfOBQrW\njvHWCUd3xqeIbu+jhfTaEUuj9nXokrBj8gWmo5TYwrtU4CLCNatxIVH8ZlZN\navLiQhgntnIGFZzY+6l2faBY7vAIIyFwNo48Bo61z4wvKuotURfrQ6wrRgbO\n4/QdF3/TnjR8aRdJL1n8HfUDQi938Q==\n"
@post_id.push "9de5488bc5eebb63f6eebe264b9dc6d5"

@posts["fddfb442acc4e0788d37cdaeee851106"] = "eNptj71uwjAUhfc+xRELSyEOKkJCaRg6demSSp1v7Bti1bmObAfK29ehtCwd\nLFlX5zs/lbEnaEcxPi8oJKsdr5JNjhf1B7lPK0d4QTNJ7K0wXrx0h6rIUP1Q\n/YMaSplsKKHhEZstyt1ebfdPJVZqpxQ2qlS/+I3Jv7F+XZ4YLbNgRieRyzUK\nnQ+IfOJADr2fQnwEicFdrsm5uaRN95J6JvM9Py/HNd58680ln0Ngndhg4JsN\njDWyTNlK+4FzkutWmdbWTxHU+inNxpMk67I40hmEzlkOa7z3OX24oA1kBfw1\nOm/YrKtivA5qfO57vnmkfl5lhVKgw4+i+Fv/DTPCgXY=\n"
@post_id.push "fddfb442acc4e0788d37cdaeee851106"

