import {Pool} from "pg";
import "dotenv/config";

const pool = new Pool({
  user: process.env.USER,
  host: process.env.HOST,
  database: process.env.DATABASE,
  password: process.env.PASSWORD,
  port: parseInt(process.env.SQL_PORT!)
})


export const getEntries2019 = (req: any, res: any) => {
  pool.query(`SELECT * FROM vals2019pandas ORDER BY index`, (error: any, results: any) => {
    if (error) {
      throw error
    }
    res.status(200).json(results.rows);
  })
};

export const getEntrybyIndex2019 = (req: any, res: any) => {
  const index = parseInt(req.params.index);
  pool.query("SELECT * FROM vals2019pandas WHERE index = $1", [index], (error: any, results: any) => {
    if (error) {
      throw error
    }
    res.status(200).json(results.rows)
  })
}


export const getEntries2020 = (req: any, res: any) => {
  pool.query(`SELECT * FROM vals2020pandas ORDER BY index`, (error: any, results: any) => {
    if (error) {
      throw error
    }
    res.status(200).json(results.rows);
  })
};

export const getEntrybyIndex2020 = (req: any, res: any) => {
  const index = parseInt(req.params.index);
  pool.query("SELECT * FROM vals2020pandas WHERE index = $1", [index], (error: any, results: any) => {
    if (error) {
      throw error
    }
    res.status(200).json(results.rows)
  })
}



export const getEntries2021 = (req: any, res: any) => {
  pool.query(`SELECT * FROM vals2021pandas ORDER BY index`, (error: any, results: any) => {
    if (error) {
      throw error
    }
    res.status(200).json(results.rows);
  })
};

export const getEntrybyIndex2021 = (req: any, res: any) => {
  const index = parseInt(req.params.index);
  pool.query("SELECT * FROM vals2021pandas WHERE index = $1", [index], (error: any, results: any) => {
    if (error) {
      throw error
    }
    res.status(200).json(results.rows)
  })
}


export const getEntries2023 = (req: any, res: any) => {
  pool.query(`SELECT * FROM vals2023pandas ORDER BY index`, (error: any, results: any) => {
    if (error) {
      throw error
    }
    res.status(200).json(results.rows);
  })
};

export const getEntrybyIndex2023 = (req: any, res: any) => {
  const index = parseInt(req.params.index);
  pool.query("SELECT * FROM vals2023pandas WHERE index = $1", [index], (error: any, results: any) => {
    if (error) {
      throw error
    }
    res.status(200).json(results.rows)
  })
}




