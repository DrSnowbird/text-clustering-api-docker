import petl as etl

def etl_processing(source):
    """
    Read input from 'source' (e.g., URL, file, etc)

    :param source: Input data source, URL, file, etc.
    :return: table
    """
    table = (
        etl
        .fromcsv(source)
        # .convert('foo', 'upper')
        # .convert('bar', int)
        # .convert('baz', float)
        # .addfield('quux', lambda row: row.bar * row.baz)
    )
    print(table.look())
    return table

if __name__ == '__main__':
    text = etl_processing('http://192.168.0.127:18080/jetty_base/webapps/data/text/abcnews-mini-text.csv')
    print(text.header)